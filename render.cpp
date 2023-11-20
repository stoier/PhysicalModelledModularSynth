#include <Bela.h>
//#include <libraries/Fft/Fft.h>
#include <cmath>
#include <vector>
#include <stdlib.h>
#include <libraries/Midi/Midi.h>
#include <bitset>
//#include <libraries/Scope/Scope.h>
#include <libraries/Gui/Gui.h>
#include <libraries/GuiController/GuiController.h>

#include "slewLimit.h"

// Browser-based oscilloscope
//Scope gScope;

// Browser-based GUI to adjust parameters
Gui gui;
GuiController controller;
bool guiControl = true;

// Device for handling MIDI messages
Midi gMidi;

// Name of the MIDI port to use. Run 'amidi -l' on the console to see a list.
// Typical values: 
//   "hw:0,0,0" for a virtual device (from the computer)
//   "hw:1,0,0" for a USB device plugged into the Bela board
const char* gMidiPort0 = "hw:0,0,0";

// List of active notes
const int midiMaxNotes = 16;
int midiActiveNotes[midiMaxNotes];
int midiActiveNoteCount = 0;

int instrumentType = 2; // 1 = string, 2 = tube
int instrumentSelPin = 15;
bool instrumentChange = true;
int instrumentSel = 0;
int pastSel = 0;

// String Parameters

float stringLength = 0.15; // Length of the string
float stringStiffness = 0.4; // A stiffness term dependent on the radius, density, cross-sectional area, young's modulus and area moment of inertia of the strings
float stringIndDamp = 0.03; //Frequency independent damping
float stringDepDamp = 0.005; //Frequency dependent damping
float gFrequency = 440; //Fundamental frequency

//Numver of grid points for the string
int stringN;
int stringNPrev;
float stringNFrac;
float stringNFracPrev;


int stringExcLi; //Excitation position

std::vector<std::vector<double>> stringUStates;
std::vector<double*> stringU;
std::vector<std::vector<double>> stringWStates;
std::vector<double*> stringW; 


int Mu;
int Mw = 1;
int MuMax = 600;
float alpha;
float Iterm;
std::vector<double> customIp;
float A0, A1, A2, A3, AA;
float Adiv;

float stringCSq, stringMuSq, stringU1, stringU2,stringU3, stringUS, stringH, stringLambdaSq;
float B0, Bss, B1, B2, C0, C1;
float S0, S1;
float k;
float stringJ;
float gVel = 0;
bool excOn = true;
float out=0;
float stringOut = 0;
int stringStartCnt = 0;

// Parameters for bow excitation
float bowV = 0.2;
float bowF = 2;
float bowVFMult;
double a  = 0.000000001;
float b, vRel, vRelPrev;
float tol = 0.001;
int excType = 1;
float exc = 0;
float excPos = 0.5;
int li;
int eps;

// Parameters for pluck/strike
float t = 0;
float t0 = 0;
float excTime = 0.001;
int q = 1; // 1 = pluck, 2 = strike
int nE = 0;

// Parameters for tube

std::vector<double*> uV;
std::vector<double*> uP;
float wV = 0;
float wVNext = 0;
std::vector<double*> wP;

std::vector<std::vector<double>> uVStates;
std::vector<std::vector<double>> uPStates;
std::vector<std::vector<double>> wPStates;

std::vector<double> S;
std::vector<double> SC;
std::vector<double> SB;
float SPlus;
float SMinus;
std::vector<double> logVec;

int tubeN;
int tubeNPrev;
float tubeNFrac;
float tubeNFracPrev;

 float uPMp1, wPm1, uVNextMph, uVMph, wVNextmh, wVmh;
 float uVMmhPrev, wVhPrev;
 
 float uvMphPrev = 0;
 float wvmhPrev = 0;
float vDiff;

float cylinderBellRatio  = 0.7;
float boreScale = 0.4;
float cTube = 343;
float rhoTube = 1.225;
float cRad = 0.01;
float bRad = 0.1;
float hTube = cTube * k;
float LTube = (boreScale * 2 * M_PI * cTube)/(gFrequency*2*M_PI*rhoTube);
float cylinderLength = LTube * cylinderBellRatio;
float bellLength = LTube * (1-cylinderBellRatio);
int NC = floor(cylinderLength / hTube);
int NB = floor(bellLength / hTube);
int bellCurve = 1;
float lambdaTube = cTube*k/hTube;
float lambdaOverRhoC;
float lambdaRhoC;
float R_1 = rhoTube*cTube;
float R_2 = 0.505* rhoTube*cTube;

float L_r = 0;
float C_r = 0;
float zeta_1= 0;
float zeta_2 = 0;
float zeta_3 = 0;
float zeta_4 = 0;


float v_int=0;
float p_int=0;

// Parameters for reed excitation

float omega = gFrequency * 2 * M_PI;
float H_0 = 2.9*pow(10, -4);
float wReed= 0.005;
float SReed = 1.46* pow(10, -5);
float KReed = 0.07* pow(10 , 4);
float MReed = 5.37 * pow(10, -5);
float RReed = 0.5;

float pMouth = 0;

float sigma_r = 0.5;
float alpha_r = 0;
float beta_r = 0;
float xi_r = 0;

float U_b= 0;
float U_r= 0;
float deltaP = 0;

float yNext = 0;
float y = 0;
float yPrev = 0;

float a_1 = 2/k + omega*omega * k + sigma_r;
float a_2 = SReed / MReed;
float a_3 = 0;

float b_1 = 0;
float b_2 = 0;
float c_1 = 0;
float c_2 = b_2+(a_2*SReed)/a_1;
float c_3 = 0;

float tubeOut = 0;
	


// Midi stuff
const int maxActiveNotes = 16;
int gActiveNotes[maxActiveNotes];
int gActiveNoteCount = 0;

// Parameters for portamento/glide
float startFreq;
float endFreq;
float glideTime=2;
int lastNote;
float glideMult;
float glideAsymptote;
float glideOvershoot = 1.001;
float glideExp;
double glideTau;
float fs;

bool initString;
bool initTube;

float mainIn = 0;

//Param Looper
unsigned int paramPosPointer = 0;
bool paramRec = false;
bool paramFirstRec = true;
bool paramPlay = false;
bool firstParamRec = true;
bool clear = 0;
unsigned int paramLoopLength = 0;
unsigned int maxLoopLength = 48000 * 15;
const int recClearButton = 10;
const int paramLed = 7;
bool ledBlinkStatus = false;
unsigned ledBlinkInterval = 24000;
unsigned ledBlinkCount = ledBlinkInterval;
unsigned int doublePressCount = 0;
unsigned int paramMod = maxLoopLength;
float paramRecOut1 = 0;
float paramRecOut2 = 0;
float paramRecOut3 = 0;
bool paramRes = false;

std::vector<std::vector<float>> paramRecBufferStates;
std::vector<float*> paramRecBuffer;

int lo;


// Define the pins that are connected to the multiplexer
int muxS0 = 0;
int muxS1 = 1;
int muxS2 = 2;
int muxS3 = 3;
int muxCount = 0;

std::vector<float> muxValue;

// Define the number of channels
const int muxChannels = 16;

int muxS02 = 9;
int muxS12 = 8;
int muxCount2 = 0;
std::vector<float> muxValue2;
const int muxChannels2 = 4;


float tuneCV = 0;
float dampCV = 0;
float stiffnessCV = 0;
float posCV = 0;
float lengthCV = 0;
float forceCV = 0;
float tunePot = 440;
float dampPot = 0;
float stiffnessPot = 0;
float posPot = 0;
float excV = 0;
float excF = 0;
float lengthPot;
float dryWet = 0;
float extInVol1 = 0;
float extInVol2 = 0;
float outDelay = 0;
std::vector<float> outDelayBuffer;
unsigned int outDelayWritePointer = 0;
unsigned int outDelayReadPointer = 0;
float out2 = 0;

float cRadPot = 0;
float cRadCV = 0;
float bRadPot = 0;
float bRadCV = 0;
float cBRatPot = 0;
float cBRatCV = 0;
float pressurePot = 0;
float pressureCV = 0;
float rWPot = 0;
float rWCV = 0;
float borePot = 0.4;

float envFoAttT = 0;
float envFoDecT = 0;
float envFoAttC = 0;
float envFoDecC = 0;
float envFoOut = 0;
float envFoOutPrev = 0;
float envFoIn = 0;
bool envInSel = 0;
unsigned int envInPin = 14;
float fsr1 = 0;
float fsr2 = 0;
float fsr3 = 0;
float in2 = 0;
float vol = 0;

bool trig = true;
float eF = 0;


unsigned int resetButton = 6;
bool reset = true;

double slewRate = 0.5;
float slewLimitIn = 0;
double logFactor = 0;
SlewRateLimiter slewLimiter(slewRate, logFactor);


int debugCnt = 0;

// Update resonator states using a pointer switch
void updateStatesString()
{
	double* stringUTmp = stringU[2];
	stringU[2] = stringU[1];
    stringU[1] = stringU[0];
    stringU[0] = stringUTmp;
    
    double* wTmp = stringW[2];
    stringW[2] = stringW[1];
    stringW[1] = stringW[0];
    stringW[0] = wTmp;

    stringNFracPrev = stringNFrac;
    stringNPrev = stringN;
}

void updateStatesTube()
{
	double* uPTmp = uP[1];
    uP[1] = uP[0];
    uP[0] = uPTmp;
    
    double* wPTmp = wP[1];
    wP[1] = wP[0];
    wP[0] = wPTmp;
    
    double* uVTmp = uV[1];
    uV[1] = uV[0];
    uV[0] = uVTmp;
    wV = wVNext;

    yPrev = y;
    y = yNext;
    
    uVMph = uVNextMph;
    wVmh = wVNextmh;
}

//Cubic interpolation
void updateIp()
{
	customIp[0] = -alpha * (alpha + 1.0) / ((alpha + 2.0) * (alpha + 3.0));
    customIp[1] = 2.0 * alpha / (alpha + 2.0);
    customIp[2] = 2.0 / (alpha + 2.0);
    customIp[3] = -2.0 * alpha / ((alpha + 3.0) * (alpha + 2.0));
}


void addRemovePointString()
{
	updateIp();
	if (stringN > stringNPrev) {
        // possibly unnecessary to update up[0]
        
        stringU[0][Mu + 1] = customIp[0] * stringU[0][Mu-1]
            + customIp[1] * stringU[0][Mu]
            + customIp[2] * stringW[0][0]
            + customIp[3] * stringW[0][1];
        
        stringU[1][Mu + 1] = customIp[0] * stringU[1][Mu-1]
            + customIp[1] * stringU[1][Mu]
            + customIp[2] * stringW[1][0]
            + customIp[3] * stringW[1][1];

        stringU[2][Mu + 1] = customIp[0] * stringU[2][Mu-1]
            + customIp[1] * stringU[2][Mu]
            + customIp[2] * stringW[2][0]
            + customIp[3] * stringW[2][1];

    } else {
        stringU[0][Mu] = 0;
        stringU[1][Mu] = 0;
        stringU[2][Mu] = 0;
    }
}

void addRemovePointTube()
{
	updateIp();
	if (tubeN > tubeNPrev) {
        vDiff = wVmh- uVMph;
        
        uP[0][Mu + 1] = customIp[0] * uP[0][Mu-1]
            + customIp[1] * uP[0][Mu]
            + customIp[2] * uP[0][0]
            + customIp[3] * uP[0][1];
        
        uP[1][Mu + 1] = customIp[0] * uP[1][Mu-1]
            + customIp[1] * uP[1][Mu]
            + customIp[2] * uP[1][0]
            + customIp[3] * uP[1][1];

        uV[1][Mu] = uVNextMph;
        
        uVMph = customIp[0] * uV[1][Mu-1]
            + customIp[1] * (uV[1][Mu] - vDiff)
            + customIp[2] * wV;

    } else {
        uP[0][Mu] = 0;
        uP[1][Mu] = 0;
        uV[0][Mu-1] = 0;
        uV[1][Mu-1] = 0;
    }
}


void updateStringParams()
{
	stringCSq = (2*stringLength*gFrequency)*(2*stringLength*gFrequency); // string wavespeed squared 
	float stabTerm = stringCSq * k * k + 4 * stringDepDamp * k;
	stringH = sqrt(0.5* (stabTerm + sqrt((stabTerm * stabTerm) + 16 * stringStiffness * k * k))); //grid spacing for string
	//stringH = sqrt(stringCSq * k * k + 4 * stringDepDamp * k + sqrt((stringCSq * k * k + 2 * stringDepDamp * k) * (stringCSq * k * k + 4 * stringDepDamp * k) + 16 * stringStiffness * k * k)/2); //grid spacing for string
	stringNFrac = stringLength/stringH;
	stringN = floor(stringNFrac); // grid spacing
	alpha = stringNFrac - stringN;
	//stringH = stringLength / stringN;
	if (initString){
		stringNPrev = stringN;
		initString = false;
	}
	if (stringNPrev != stringN)
		addRemovePointString();
	
	Mu = stringN - Mw; 
	
	Iterm = (alpha - 1.0) / (alpha + 1.0);
	
	A0 = Iterm * Iterm - 4.0 * Iterm + 6.0;
    A1 = Iterm - 4.0;
    A2 = -(Iterm * Iterm) + 4.0 * Iterm + 1.0;
    A3 = -Iterm;
    AA = Iterm - 2.0;
    
	stringLambdaSq = stringCSq * k * k / (stringH*stringH); //Courant number
	stringMuSq = stringStiffness * k * k / (stringH*stringH*stringH*stringH);
	S0 = stringIndDamp * k;
    S1 = (2.0 * stringDepDamp * k) / (stringH * stringH);
	B0 = 2.0 - 2.0* stringLambdaSq - 6.0 * stringMuSq - 2.0 * S1;
	Bss = 2.0 - 2.0 * stringLambdaSq - 5 * stringMuSq - 2.0 * S1;
	B1 = stringLambdaSq + 4.0 * stringMuSq + S1;
	B2 = - stringMuSq;
	C0 = S0 + 2.0 * S1 -1;
	C1 = -S1;
	
	Adiv = 1.0 / (1.0 + S0);
	
	B0 *= Adiv;
	Bss *= Adiv;
	B1 *= Adiv;
	B2 *= Adiv,
	C0 *= Adiv;
	C1 *= Adiv;



	li = floor(Mu*excPos)+1; //Discrete excitation position
	lo = 5; //Discrete output position
	
}

void calculateTubeShape()
{
	for (int i = 0; i <= NC; i++)
    {
        S[i] = M_PI * cRad * cRad;
    }
    
    // if bell is linear
    if(bellCurve == 1)
    {
        float r = cRad;
        float rGrowth = (bRad - cRad) / NB;
        for (int i = 1; i<= NB; i++)
        {
            r = r + rGrowth;
            S[i+NC] = M_PI *r*r;
        }
    }
    // if bell is exponential
    else if(bellCurve == 2)
    {
        float r = cRad;
        float rGrowth = exp(log(bRad/cRad)/NB);
        for (int i = 1; i<= NB; i++)
        {
            r = cRad * pow(rGrowth,i);
            S[i+NC] = M_PI*r*r;
        }
    }
    // if bell is logarithmic
    else if(bellCurve == 3)
    {
        float r = cRad;
        float rGrowth = (bRad - cRad)/log(NB);
        for (int i = 1; i<= NB; i++)
        {
            r = cRad + rGrowth * logVec[i];
           S[i+NC] = M_PI * r*r;
        }
    }
}

void updateTubeParams()
{

	 LTube = (boreScale * 2 * M_PI * cTube)/(omega*rhoTube);
	 cylinderLength = LTube * cylinderBellRatio;
	 bellLength = LTube * (1-cylinderBellRatio);
	 tubeNFrac = LTube / hTube;
	 NC = floor(cylinderLength / hTube);
	 NB = floor(bellLength / hTube);
	 tubeN = floor(tubeNFrac)-1;


	calculateTubeShape();
	
	if (initTube){
		tubeNPrev = tubeN;
		initString = false;
	}
}





void setupString()
{
	
	stringUStates = std::vector<std::vector<double>> (3, std::vector<double>(MuMax+1, 0));
	stringU.resize (3, nullptr);
	for (int i = 0; i < 3; ++i)
        stringU[i] = &stringUStates[i][0];
    
    stringWStates = std::vector<std::vector<double>> (3, std::vector<double>(Mw+1, 0));
	stringW.resize (3, nullptr);
	for (int i = 0; i < 3; ++i)
        stringW[i] = &stringWStates[i][0];
        
	initString = true;
	updateStringParams();
	
    stringNFracPrev = stringNFrac;
    stringNPrev = stringN;
}

void setupTube()
{
	uPStates = std::vector<std::vector<double>> (2, std::vector<double>(MuMax+1, 0));
	uP.resize(2, nullptr);
	for (int i = 0; i < 2; ++i)
        uP[i] = &uPStates[i][0];
    wPStates = std::vector<std::vector<double>> (2, std::vector<double>(Mw+1, 0));
	wP.resize(2, nullptr);
	for (int i = 0; i < 2; ++i)
        wP[i] = &wPStates[i][0];
        
    uVStates = std::vector<std::vector<double>> (2, std::vector<double>(MuMax, 0));
	uV.resize(2, nullptr);
	for (int i = 0; i < 2; ++i)
        uV[i] = &uVStates[i][0];
        
    wV = 0;
    wVNext = 0;
    
    yNext = 0;
	y = 0;
	yPrev = 0;
	v_int = 0;
	p_int = 0;
	
    uVNextMph = 0;
    wVNextmh = 0;
    uPMp1 = 0;
    wPm1 = 0;
    
    S.resize(MuMax+1, 0);
    logVec.resize(MuMax+1,0);
    for (int i= 0; i< MuMax+1; ++i)
    	logVec[i] = log(i);
	hTube = cTube * k;
    initTube = true;
    updateTubeParams();

    tubeNFracPrev = tubeNFrac;
    tubeNPrev = tubeN;

}

//sign function
int sgn(double val) {
       return (0 < val) - (val < 0);
    }

//Exciters
void getBowExc()
{
	b = ((2/k) + 2*stringIndDamp)*excV - (2/(k*k))*(stringU[1][li]-stringU[2][li]) + (stringCSq/(stringH*stringH))
	*(stringU[1][li+1]-2*stringU[1][li]+stringU[1][li-1]) + (stringStiffness/(stringH*stringH)) 
	* (stringU[1][li+2]-4*stringU[1][li+1]+6*stringU[1][li]- 4 * stringU[1][li-1] + stringU[1][li-2]) 
	- (2*stringDepDamp/(k*stringH*stringH))*(stringU[1][li+1] - 2 * stringU[1][li]+ stringU[1][li-1])
	- (stringU[2][li+1]- 2 * stringU[2][li] + stringU[2][li-1]);
	eps = 1;
    int i = 0;
    while (eps>tol) {
    	vRel = vRelPrev - (((2/k+2*stringIndDamp)*vRelPrev+excF*sqrt(2*a)*vRelPrev
    	*exp(-a*vRelPrev*vRelPrev+0.5)+b)/(2/k + 2*stringIndDamp+excF*sqrt(2*a)*(1-2*a*vRel*vRel)*exp(-a*(vRel*vRel+0.5))));
		eps=  std::abs(vRel-vRelPrev);
        vRelPrev = vRel;
        i = i+1;
    	i++;
    	if (i > 200) {
            break;
        }
    }
    exc = sqrt(2*a)*vRel*exp(-a*vRel*vRel+0.5)*excF;
}

void getPluckExc()
{
	if (nE < floor(excTime*fs)) {
		q = excType-1;
		exc = excF / 2*(1-std::cos((q*M_PI*(t-t0))/(excTime)));
		t = t + k;
    }
    else {
    	exc = 0;
    }
    nE++;
}

float envelopeFollower(float in, float attackSens, float decaySens)
{
	envFoIn = fabsf(in);
	if(in > envFoOutPrev){
		envFoOut = attackSens * envFoOutPrev + (1 - attackSens) * envFoIn;
	}
	else{
		envFoOut = decaySens * envFoOutPrev + (1 - decaySens) * envFoIn;
	}
	envFoOutPrev = envFoOut;
	return envFoOut;
}



float limit (float val, float min, float max)
{
    if (val < min)
        return min;
    else if (val > max)
        return max;
    else
        return val;
}

//Handle midi note on/off messages
void noteOn(int noteNumber, int velocity)
{
	
	if(gActiveNoteCount < maxActiveNotes) {
		gActiveNotes[gActiveNoteCount++] = noteNumber;
		startFreq = gFrequency;
		//gFrequency = powf(2.0, (noteNumber - 69)/12.0) * 440.0;
		endFreq = powf(2.0, (noteNumber - 69)/12.0) * 440.0;
		float decibels = map(velocity, 1, 127, -40, 0);
		if(gActiveNoteCount == 1) {
			gVel = powf(10.0, decibels / 20.0);
			//excADSR.trigger();
			if (excType == 2 ||  excType == 3) {
				t= 0;
				nE= 0;
			}
		}
		excOn = true;
		//ParamChange = true;
		lastNote = noteNumber;
	}
}

void noteOff(int noteNumber)
{

	bool activeNoteChanged = false;
	
	for(int i = gActiveNoteCount - 1; i >= 0; i--) {
		if(gActiveNotes[i] == noteNumber) {
			// Found a match: is it the most recent note?
			if(i == gActiveNoteCount - 1) {
				activeNoteChanged = true;
			}
	
			// Move all the later notes back in the list
			for(int j = i; j < gActiveNoteCount - 1; j++) {
				gActiveNotes[j] = gActiveNotes[j + 1];
			}
			gActiveNoteCount--;
		}
	}
	if(gActiveNoteCount == 0) {
		//gVel = 0;
		excOn = false;
		//excADSR.release();
	}
	else if(activeNoteChanged) {
		startFreq = gFrequency;
		int mostRecentNote = gActiveNotes[gActiveNoteCount - 1];
		endFreq = powf(2.0, (mostRecentNote - 69)/12.0) * 440.0;
	//	glideTo();
	}
}

// reset param lopper
void resetParamRec()
{
	paramPlay = false;
	paramRec = false;
	firstParamRec = true;
	paramPosPointer = 0;
	paramLoopLength = 0;
	for (int i = 0; i < paramMod; i++)
	{
		paramRecBuffer[0][i] = 0;
		paramRecBuffer[1][i] = 0;
		paramRecBuffer[2][i] = 0;
	}
	paramMod = maxLoopLength;
	paramRes = false;
	
}

void nextParamRecSample()
{	
	if (paramRec){
		paramRecBuffer[0][paramPosPointer] = fsr1;
		paramRecBuffer[1][paramPosPointer] = fsr2;
		paramRecBuffer[2][paramPosPointer] = fsr3;
		if (firstParamRec){
			paramLoopLength++;
		}
	}
	
	paramRecOut1 = paramRecBuffer[0][paramPosPointer];
	paramRecOut2 = paramRecBuffer[1][paramPosPointer];
	paramRecOut3 = paramRecBuffer[2][paramPosPointer];
	
	if (paramLoopLength > maxLoopLength)
	{
		firstParamRec = false;
		paramMod = maxLoopLength;
		paramLoopLength = 0;
	}
	
	if (paramPlay || paramRec){
		paramPosPointer++;
		paramPosPointer %= paramMod;
	}
}

bool setup(BelaContext *context, void *userData)
{

	muxValue.resize(muxChannels);
	muxValue2.resize(muxChannels2);

	// Set up the GUI
	gui.setup(context->projectName);
	controller.setup(&gui, "String Controller");	
	if (guiControl){
		// Arguments: name, default value, minimum, maximum, increment
		if (instrumentType == 1){
			controller.addSlider("Freq Ind Damp", 0.03, 0, 10, 0);
			controller.addSlider("Freq Dep Damp", 0.005, 0.0002, 0.04, 0);
			controller.addSlider("Stiffness", 0.2, 0.001, 1, 0);
			controller.addSlider("Exc position", 0, 0.1, 0.9, 0);
			controller.addSlider("Exc vel", 0, 0, 10, 0);
			controller.addSlider("Exc force", 0, 0, 2, 0);
			controller.addSlider("Friction", 2, 0.1, 100, 0);
			controller.addSlider("Exc Type", 1, 1, 4, 1);
		}
		else {
			controller.addSlider("Cyllinder radius", 2, 1, 20, 0);
			controller.addSlider("Bell radius", 4, 1, 100, 0);
			controller.addSlider("Bore scale", 0.35, 0.1, 0.45, 0);
			controller.addSlider("Cyllinder bell ratio", 0.80, 0, 1, 0);
			controller.addSlider("Mouth Pressure", 0 , 0, 200, 0);
			controller.addSlider("Reed Width", 5, 1, 100, 0);
			controller.addSlider("Reed Mass", 0.0537, 0.01, 10, 0);
			controller.addSlider("Bell curve", 1, 1, 4, 1);
		}
			controller.addSlider("Frequency", 440, 100, 3000, 1);
	}
	

	// Initialise the MIDI device
	if(gMidi.readFrom(gMidiPort0) < 0) {
		rt_printf("Unable to read from MIDI port %s\n", gMidiPort0);
		return false;
	}
	gMidi.writeTo(gMidiPort0);
	gMidi.enableParser(true);
	fs = context->audioSampleRate;
	k = 1 / context->audioSampleRate; //time step for fdtd
	customIp.resize(4, 0);
	setupString();
	setupTube();
	stringNPrev = stringN;
	
	outDelayBuffer.resize(0.5 * context->analogSampleRate);

	// init buffer for parameter Recording
	paramRecBuffer.resize(10 * context->analogSampleRate);
	
	
	paramRecBufferStates = std::vector<std::vector<float>> (3, std::vector<float>(maxLoopLength+1, 0));
	paramRecBuffer.resize (3, nullptr);
	for (int i = 0; i < 3; ++i)
        paramRecBuffer[i] = &paramRecBufferStates[i][0];

    resetParamRec();
	pinMode(context, 0, muxS0, OUTPUT);
	pinMode(context, 0, muxS1, OUTPUT);
	pinMode(context, 0, muxS2, OUTPUT);
	pinMode(context, 0, muxS3, OUTPUT);
	pinMode(context, 0, muxS02, OUTPUT);
	pinMode(context, 0, muxS12, OUTPUT);
	pinMode(context, 0, recClearButton, INPUT);
	pinMode(context, 0, paramLed, OUTPUT);
	pinMode(context, 0, 11, INPUT);
	pinMode(context, 0, 4, INPUT);
	pinMode(context, 0, 5, INPUT);

	pinMode(context, 0, 12, INPUT);
	pinMode(context, 0, 13, INPUT);
	pinMode(context, 0, resetButton, INPUT);
	//pinMode(context, 0, 14, INPUT);
	pinMode(context, 0, envInPin, INPUT);
	pinMode(context, 0, instrumentSelPin, INPUT);


	return true;
}


void render(BelaContext *context, void *userData)
{

	if (instrumentType == 1){
		stringLength = lengthPot + lengthCV;
		if (stringLength < 0.1){
			stringLength = 0.1;
		}
		stringStiffness = stiffnessPot + stiffnessCV;
		if (stringStiffness < 0.001)
			stringStiffness = 0.001;
		gFrequency = tunePot * powf(2.0, tuneCV);
		stringDepDamp = dampPot; //+ dampCV;
		if (stringDepDamp < 0.0002)
			stringDepDamp = 0.0002;
	} else{
		cylinderBellRatio = cBRatPot + cBRatCV;
		if (cylinderBellRatio < 0)
			cylinderBellRatio = 0;
		if (cylinderBellRatio > 0.9)
			cylinderBellRatio = 0.9;
		
		cRad = cRadPot + cRadCV;
		if (cRad < 0.01)
			cRad = 0.01;
		bRad = cRad + bRadPot;// + bRadCV;
		if (bRad < cRad){
			bRad  = cRad;
		}
		gFrequency = tunePot * powf(2.0, tuneCV);
		omega = gFrequency * 2 * M_PI;

		if (gFrequency > 400){
			boreScale = map(borePot, 0.0002, 0.825, 0.1, 0.35);}
		else{
			boreScale = map(borePot, 0.0002, 0.825, 0.1, (gFrequency-50)*0.001);
		}

		wReed = rWPot + rWCV;
		if (wReed < 0.0001){
			wReed =  0.0001;
		}
		
		pMouth = pressurePot + pressureCV;

		updateTubeParams();

	}
	envFoAttC = pow(exp(-1.0 / envFoAttT), 1.0 / context->audioSampleRate);
	envFoDecC = pow(exp(-1.0 / envFoDecT), 1.0 / context->audioSampleRate);
	//slewLimiter.setMaxRate(0.0000001);
    //slewLimiter.setLogFactor(0);
    int delaySamples= outDelay * context->audioSampleRate;
	outDelayReadPointer = (outDelayWritePointer - delaySamples + outDelayBuffer.size()) % outDelayBuffer.size();
	muxCount2++;
	if (muxCount2 > muxChannels2-1){
			muxCount2 = 0;
	}
	
	for(unsigned int n = 0; n < context->audioFrames; n++) {
		//if (guiControl == false){
		
			
    	std::bitset<4> channel(muxCount);
		std::bitset<2> channel2(muxCount2);
    	
    	digitalWriteOnce(context, n, muxS0, channel[0]);
    	digitalWriteOnce(context, n, muxS1, channel[1]);
    	digitalWriteOnce(context, n, muxS2, channel[2]);
		digitalWriteOnce(context, n, muxS3, channel[3]);
	
		digitalWriteOnce(context, n, muxS02, channel2[0]);
		digitalWriteOnce(context, n, muxS12, channel2[1]);

		if (n % 2 == 0){
			muxCount++;
		}

		
		muxValue[muxCount-1] = analogRead(context, n/2, 0);
		if (muxCount > muxChannels - 1){
			muxCount = 0;
		}
		
		muxValue2[muxCount2] = analogRead(context, n/2, 6);
		
		
		if (digitalRead(context, 0, instrumentSelPin) == 0){
			instrumentType = 1;
		} else {
			instrumentType = 2;
			stringStartCnt = 100;
		}
		
		if (stringStartCnt < 100 && instrumentType == 1){
			instrumentType = 2;
			stringStartCnt ++;
		}
		
		if (digitalRead(context, 0, resetButton) == 0){
			if(reset == true){
				setupString();
				setupTube();
				//stringNPrev = stringN;
				reset = false;
			}
		}
		else{
			reset = true;
		}
			
			
		if (digitalRead(context, 0, 4) == 0){
			fsr2 = map(muxValue2[0], 0, 0.813, 0, 1);
		}
		else{
			fsr2 = map(muxValue2[0], 0, 0.813, 1, 0);
		}
		
		if (digitalRead(context, 0, 5) == 0){
			fsr1 = map(muxValue2[3], 0, 0.813, 0, 1);
		}
		else{
			fsr1 = map(muxValue2[3], 0, 0.813, 1, 0);
		}
		if (digitalRead(context, 0, 11) == 0){
			fsr3 = map(muxValue2[1], 0, 0.813, 0, 1);
		}
		else{
			fsr3 = map(muxValue2[1], 0, 0.813, 1, 0);
		}
		
		
		if (paramPlay == true){
			analogWrite(context, n/2, 0, paramRecOut1);
			analogWrite(context, n/2, 1, paramRecOut2);	
			analogWrite(context, n/2, 5, paramRecOut3);
		}
		else{
			analogWrite(context, n/2, 0, fsr1);
			analogWrite(context, n/2, 1, fsr2);
			analogWrite(context, n/2, 5, fsr3);
		}
		
		// param play led handling
		if (paramRec){
			digitalWrite(context, n, paramLed, ledBlinkStatus);
			if (--ledBlinkCount == 0){
				ledBlinkStatus = !ledBlinkStatus;
				ledBlinkCount = ledBlinkInterval;
			}
		} 
		else if (paramPlay == true){
			digitalWrite(context, n, paramLed, HIGH);
		} 
		else{
			digitalWrite(context, n, paramLed, LOW);
		}
		
		
		if (digitalRead(context, 0, recClearButton) == 0){
			if (doublePressCount > 0.5 * context->audioSampleRate ) {
				paramRec = true;
				paramPlay = false;
			}
			else if (paramRes == true){
				resetParamRec();
			}
		}
		else {
			if (paramRec == true){
				paramPlay = true;
				paramMod = paramLoopLength;
				paramLoopLength = 0;
				doublePressCount = 0;
				paramRes = true;
			}
			doublePressCount++;
			paramRec = false;
		}
		
		nextParamRecSample();
		
		

		tunePot = map(muxValue[0], 0.0002, 0.825, 0, 4);
		if (tunePot < 2.05  && 1.95 < tunePot ){
			tunePot = 2;
		}
		tunePot = 65.406 * powf(2, tunePot); //32.703 Hz = C1
		//}
		extInVol1 = map(muxValue[7], 0.0002, 0.825, 0, 1);
		if (extInVol1 < 0.1)
			extInVol1 = 0;
		extInVol2 = map(muxValue[11], 0.0002, 0.825, 0, 1);
		if (extInVol2 < 0.1)
			extInVol2 = 0;
		envFoAttT = map(muxValue[8], 0.0002, 0.825, 0.01, 2);
		envFoDecT = map(muxValue[10], 0.0002, 0.825, 0.01, 2);
			
		tuneCV = analogRead(context, n/2, 1);
		if (tuneCV < 0.405  || 0.415 < tuneCV ){
			tuneCV = (1.684f - tuneCV * 4.096f) * 2.99491;
		}
		else {
			tuneCV = 0;
		}
		dryWet = map(muxValue[12], 0.0002, 0.825, 0, 1);
		if (dryWet < 0){
			dryWet = 0;
		}
		if (dryWet > 1){
			dryWet = 1;
		}
		
		outDelay = map(muxValue[14], 0.0002, 0.825, 0, 0.49);
		if (outDelay < 0.01){ 
			outDelay = 0;
		}
		
		vol = map(muxValue[15], 0.0002, 0.825, 0, 1);
		
		slewRate = abs(map(muxValue[13], 0.0002, 0.825, 0.0000001, 0.00000001));
		slewLimiter.setMaxRate(slewRate);
		slewLimitIn = map(muxValue2[2], 0.8216, 0.0048, -1, 1);
		if (slewLimitIn < 0){
			slewLimitIn = abs(slewLimitIn);
		}
		analogWrite(context, n/2, 4, slewLimiter.process(slewLimitIn, context->audioSampleRate / context->audioFrames));
		
		if (digitalRead(context, 0, envInPin) == 0){
			analogWrite(context, n/2, 2, envelopeFollower(mainIn, envFoAttC, envFoDecC));
		} else {
			analogWrite(context, n/2, 2, envelopeFollower(in2, envFoAttC, envFoDecC));
		}
		
		if (instrumentType == 1){
			//if (guiControl == false){
			dampPot =  map(muxValue[1], 0.0002, 0.825, 0.0002, 0.05);
			stiffnessPot = map(muxValue[2], 0.0002, 0.825, 0.01, 2);
			stringIndDamp = map(muxValue[3], 0.0002, 0.825, 0.1, 10);
			lengthPot = map(muxValue[4], 0.0002, 0.825, 0.1, 4);
			excF = map(muxValue[5], 0.0002, 0.825, 0, 4);
			if (excF < 0.02 && -0.02 < excF)
				excF = 0;

			//glideTime = map(muxValue[8], 0.0002, 0.825, 0.01, 2);
			posPot = map(muxValue[9], 0.0002, 0.825, 0.1, 0.9);
			
	
			//dampCV = map(analogRead(context, n/2, 3), 0.8137, 0.0003, -0.01, 0.01);
			if (dampCV < 0.0001 && -0.0001 < dampCV ){
				dampCV = 0;
			}
			
			stiffnessCV = map(analogRead(context, n/2, 2), 0.8189, 0.0081, -0.2, 0.2);
			
			if (stiffnessCV < 0.0003 && -0.0007 < stiffnessCV ){
				stiffnessCV = 0;
			}
			
			posCV = map(analogRead(context, n/2, 4), 0.80779, 0.00021, -0.4, 0.4);
			if (posCV < 0.0016 && -0.0016 < posCV ){
				posCV = 0;
			}
			
			lengthCV = map(analogRead(context, n/2, 5), 0.8151, 0.0007, -0.2, 0.2);
			if (lengthCV < 0.005 && -0.005 < lengthCV ){
				lengthCV = 0;
			}
			
			forceCV = map(analogRead(context, n/2, 7), 0.8198, 0.0006, -2, 2);
			if (forceCV < 0.37 && -0.005 < forceCV ){
				forceCV = 0;
			}
			
			
			excPos = posPot + posCV;
			if (excPos < 0.1)
				excPos = 0.1;
			if (excPos > 0.9)
				excPos = 0.9;
			
			
	
			excF = excF + forceCV;
			excV = excF * 0.1;
			if (digitalRead(context, 0, 12) == 1 && digitalRead(context, 0, 13) == 0){
				excType = 1;
				a = map(muxValue[6], 0.0002, 0.825, 0.00000000005, 0.0000005);
				
			}
			else if (digitalRead(context, 0, 12) == 0 && digitalRead(context, 0, 13) == 1){
				excType = 3;
				excTime = map(muxValue[6], 0.0002, 0.825, 0.00005, 0.005);
				
			}
			else{
				excType = 2;
				excTime = map(muxValue[6], 0.0002, 0.825, 0.00005, 0.005);
			}
			
			
			updateStringParams();
			
			if (excType == 1) {
				getBowExc();
			}
			else {
				if (forceCV > 0.25){
					if (trig == true){
						t= 0;
						nE= 0;
						trig = false;
					}
				}
				else if (forceCV < 0.1){
					trig = true;
				}
				getPluckExc();
			}
	
			exc = exc + mainIn*extInVol1*dryWet + in2 * extInVol2;
			
			//Calculate left simply-supported boundary simply-supported of left system
			stringU[0][1] = Bss * stringU[1][1] + B1 * (stringU[1][2] + stringU[1][0]) + B2 * stringU[1][3]
				+ C0 * stringU[2][1] + C1 * (stringU[2][2]+stringU[2][0]);	
			
			//Calculate left system
			for (int l = 2; l < Mu-1; ++l) {
				if (l == li)
			    	stringJ = 1/stringH;
		       	else
		    	   	stringJ = 0;
				stringU[0][l] = B0 * stringU[1][l] + B1 * (stringU[1][l+1]+stringU[1][l-1]) + B2 * (stringU[1][l+2]+stringU[1][l-2])
					+ C0 * stringU[2][l] + C1 *(stringU[2][l+1]+stringU[2][l-1]) + stringJ*exc;
			}
			stringU[0][Mu-1] = (2.0 * stringU[1][Mu-1] - stringU[2][Mu-1]
	                        + stringLambdaSq * (stringU[1][Mu] - 2.0 * stringU[1][Mu - 1] + stringU[1][Mu - 2])
	                        - stringMuSq * (stringU[1][Mu - 3] - 4 * stringU[1][Mu - 2] + 6 * stringU[1][Mu-1] + A1 * stringU[1][Mu] + stringW[1][0])
	                        + S0 * stringU[2][Mu-1]
	                        + S1 * (stringU[1][Mu] - 2.0 * stringU[1][Mu - 1] + stringU[1][Mu - 2])
	                        - S1 * (stringU[2][Mu] - 2.0 * stringU[2][Mu - 1] + stringU[2][Mu - 2])) / (1.0 + S0);;
			stringU[0][Mu] =  (2.0 * stringU[1][Mu]
	                        + stringLambdaSq * (stringW[1][0] + AA * stringU[1][Mu] + stringU[1][Mu - 1])
	                        - stringMuSq * (stringU[1][Mu - 2] - 4 * stringU[1][Mu - 1] + A0 * stringU[1][Mu] + (A1 - A3) * stringW[1][0])
	                        + (-1.0 + S0) * stringU[2][Mu]
	                        + S1 * (stringW[1][0] + AA * stringU[1][Mu] + stringU[1][Mu - 1])
	                       - S1 * (stringW[2][0] + AA * stringU[2][Mu] + stringU[2][Mu - 1])) / (1.0 + S0);
			stringW[0][0] = (2.0 * stringW[1][0]
	                + stringLambdaSq * (A3 * stringU[1][Mu-1] + stringU[1][Mu] + AA * stringW[1][0])
	                - stringMuSq * (A3 * stringU[1][Mu-2] + A2 * stringU[1][Mu-1] + A1 * stringU[1][Mu]
	                          + (A0 - 1.0) * stringW[1][0]) 
	                + (-1.0 + S0) * stringW[2][0]
	                + S1 * (A3 * stringU[1][Mu-1] + stringU[1][Mu] + AA * stringW[1][0])
	                - S1 * (A3 * stringU[2][Mu-1] + stringU[2][Mu] + AA * stringW[2][0])) / (1.0 + S0);
				
			stringOut =	stringU[1][lo]*0.0001;
				
	
			out = limit(stringOut*10 + mainIn * (1.f - dryWet) * extInVol1, -1, 1);
				
			updateStatesString();
		}
		else {
			bRadPot =  map(muxValue[1], 0.0002, 0.825, 0, 0.5);
			cRadPot = map(muxValue[2], 0.0002, 0.825, 0.01, 0.1);
			borePot = muxValue[3];
			rWPot = map(muxValue[4], 0.0002, 0.825, 0.001, 0.05);
			
			pressurePot = map(muxValue[5], 0.0002, 0.825, 0, 100);
			if (pressurePot < 0.5)
				pressurePot = 0;
			MReed = map(muxValue[6], 0.0002, 0.825, 0.000001, 0.001);
			
			
			cBRatPot = map(muxValue[9], 0.0002, 0.825, 0, 0.9);
			
			
			if (bRadCV < 0.001 && -0.001 < bRadCV ){
				bRadCV = 0;
			}
			
			cRadCV = map(analogRead(context, n/2, 2), 0.8189, 0.0081, -0.05, 0.05);
			
			if (cRadCV < 0.001 && -0.001 < cRadCV ){
				cRadCV = 0;
			}
			
			cBRatCV = map(analogRead(context, n/2, 4), 0.81, 0.00021, -0.45, 0.45);
			if (cBRatCV < 0.0002 && -0.0002 < cBRatCV ){
				cBRatCV = 0;
			}
			
			rWCV = map(analogRead(context, n/2, 5), 0.8151, 0.0007, -0.025, 0.025);
			if (rWCV < 0.002 && -0.002 < rWCV ){
				rWCV = 0;
			}
			
			pressureCV = map(analogRead(context, n/2, 7), 0.8198, 0.0006, -100, 100);
			if (pressureCV < 0.5 && -0.5 < pressureCV ){
				pressureCV = 0;
			}
			
	
			
			if (digitalRead(context, 0, 12) == 1 && digitalRead(context, 0, 13) == 0){
				bellCurve = 1;
				
			}
			else if (digitalRead(context, 0, 12) == 0 && digitalRead(context, 0, 13) == 1){
				bellCurve = 3;
				
			}
			else{
				bellCurve = 2;
			}
			if (tubeNPrev != tubeN)
				addRemovePointTube();
		
		
			Mu = tubeN - Mw; 
		    tubeNPrev = tubeN;
		    
			L_r = 0.613*rhoTube*sqrt(S[tubeN+1]/M_PI);
			C_r = 1.111* sqrt(S[tubeN+1])/(rhoTube*cTube*cTube*sqrt(M_PI));
		
			zeta_1=(2*R_2*k)/(2*R_1*R_2*C_r+k*(R_1+R_2));
			zeta_2 = (2*R_1*R_2*C_r-k*(R_1+R_2))/(2*R_1*R_2*C_r+k*(R_1+R_2));
			zeta_3 = k/(2*L_r)+zeta_1/(2*R_2)+(C_r*zeta_1)/k;
			zeta_4 = (zeta_2+1)/(2*R_2)+(C_r*zeta_2-C_r)/k;
			
			alpha_r = 2+omega*omega*k*k + sigma_r * k;
			beta_r = sigma_r * k  - 2 - omega*omega*k*k;
			xi_r = (2* SReed * k*k)/MReed;
			
			a_1 = 2/k + omega*omega * k + sigma_r;
		    a_2 = SReed / MReed;
		
		    b_2 = (S[0] * hTube) / (rhoTube * cTube* cTube * k);
		
		    c_1 = wReed * ((y+H_0+abs(y+H_0))/2) * sqrt(2/rhoTube);
		    c_2 = b_2+(a_2*SReed)/a_1;
    
			lambdaOverRhoC = lambdaTube/(rhoTube*cTube);
			lambdaRhoC = lambdaTube * rhoTube * cTube;
            
			// Calculate velocity
			for (int l = 0; l < Mu; ++l)
        		uV[0][l] = uV[1][l] - lambdaOverRhoC * (uP[1][l+1] - uP[1][l]);
			
			wVNext = wV - lambdaOverRhoC * (wP[1][1]-wP[1][0]);

		    Iterm = (alpha - 1) / (alpha + 1);
			
		    uPMp1 = Iterm*uP[1][Mu]+wP[1][0]-Iterm*wP[1][1];
		    wPm1 = -Iterm*uP[1][Mu-1]+uP[1][Mu]+Iterm*wP[1][0];
		
		    uVNextMph = uVMph - lambdaOverRhoC * (uPMp1 - uP[1][Mu]);
		    wVNextmh = wVmh - lambdaOverRhoC * (wP[1][0] - wPm1);
		    
		    a_3 = (2/(k*k))*(y-yPrev)- omega*omega*yPrev;
		    b_1 = S[0] * uV[0][0] + ((S[0]*hTube)/(rhoTube*cTube*cTube * k))*(pMouth - uP[1][0]);
		    c_3 = b_1 - (a_3 * SReed)/a_1;
		
		    // Update the pressure differennce
		    deltaP = sgn(c_3) * pow(((-c_1 + sqrt(c_1*c_1 + 4*c_2* abs(c_3)))/(2*c_2)), 2);
		
		    // Update equation for the displacement
		    yNext = (4 * y + beta_r * yPrev + xi_r * deltaP)/alpha_r;
		
		    // Update volume flow velocities
		    U_b = wReed*((y+H_0+abs(y+H_0))/2)*sgn(deltaP)*sqrt(2*abs(deltaP)/rhoTube);
		    U_r = (SReed / (2*k)) * (yNext-yPrev);
		    
		    for (int l = 1; l < Mu; ++l){
		    	SPlus = 0.5*(S[l]+S[l-1]);
		    	SMinus = 0.5*(S[l]+S[l+1]);
		    	uP[0][l] = uP[1][l] - ((lambdaRhoC)/((SPlus+SMinus)/2)) * (uV[0][l]*SPlus - uV[0][l-1]*SMinus); 
		    }
		    SMinus = 0.5*(S[Mu]+S[Mu-1]);
    		SPlus = 0.5*(S[Mu]+S[Mu+1]);
		    uP[0][Mu]= uP[1][Mu]-((lambdaRhoC)/((SPlus+SMinus)/2))*(uVNextMph*SPlus-uV[0][Mu-1]*SMinus);
			wP[0][0]= wP[1][0]-((lambdaRhoC)/((SPlus+SMinus)/2))*(wVNext*SPlus-wVNextmh*SMinus);
			
			// Update right boundary (calculate radiation)
    		wP[0][1] = (1-lambdaRhoC*zeta_3)/(1+lambdaRhoC*zeta_3)*wP[1][1]-((2*lambdaRhoC)/(1+lambdaRhoC*zeta_3))*(v_int+zeta_4*p_int-(0.5*(S[tubeN]+S[tubeN-1])*wVNext/S[tubeN]));
    		
    		// Update the internal states
    		v_int=v_int+k/L_r*0.5*(wP[0][1]+wP[1][1]);
    		p_int= zeta_1 * 0.5*(wP[0][1]+wP[1][1]) + zeta_2 * p_int;
    		
    		// Update left boundary (reed excitation)
    		uP[0][0] = uP[1][0] - lambdaRhoC /S[0] * (-2 * (U_b+U_r) + 2 * S[0] * uV[0][0]) + mainIn*extInVol1 * dryWet + in2 * extInVol2;
    		
    		out = limit(wP[0][1] * 0.3 + mainIn * (1.f - dryWet) * extInVol1, -0.5, 0.5);
    		
    		updateStatesTube();

		}
		outDelayBuffer[outDelayWritePointer] = out;
		out2 = outDelayBuffer[outDelayReadPointer];

		outDelayWritePointer++;
		if (outDelayWritePointer >= outDelayBuffer.size())
			outDelayWritePointer = 0;
			
		outDelayReadPointer ++;
		if (outDelayReadPointer >= outDelayBuffer.size())
			outDelayReadPointer = 0;
		
		mainIn = audioRead(context, n, 0);
		audioWrite(context, n, 0, out);
		in2 = audioRead(context, n, 1);
		audioWrite(context, n, 1, out2);

		
	}
}


void cleanup(BelaContext *context, void *userData)
{

}
