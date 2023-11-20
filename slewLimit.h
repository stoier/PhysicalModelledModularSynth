#pragma once
#include <cmath>

class SlewRateLimiter {
public:
    SlewRateLimiter(double maxRate, double logFactor) : maxRate_(maxRate), logFactor_(logFactor), output_(0.0), lastInput_(0.0) {}

    double process(double input, double timeDelta) {
        double maxStep = maxRate_ * timeDelta;
        double delta = input - lastInput_;
        double sign = delta >= 0 ? 1.0 : -1.0;
        double absDelta = std::abs(delta);
        double outputDelta;
        if (logFactor_ == 0.0) {
            // Linear response curve
            outputDelta = std::min(absDelta, maxStep);
        } else if (logFactor_ == 1.0) {
            // Logarithmic response curve
            outputDelta = sign * std::log(absDelta * maxRate_ + 1.0) / std::log(maxRate_ + 1.0);
        } else {
            // Interpolate between linear and logarithmic response curves
            double alpha = std::pow(absDelta / maxStep, logFactor_);
            outputDelta = alpha * sign * std::log(absDelta * maxRate_ + 1.0) / std::log(maxRate_ + 1.0) + (1.0 - alpha) * std::min(absDelta, maxStep);
        }
        output_ = lastInput_ + sign * outputDelta;
        lastInput_ = output_;
        return output_;
    }

    void setMaxRate(double maxRate) {
        maxRate_ = maxRate;
    }

    void setLogFactor(double logFactor) {
        logFactor_ = logFactor;
    }

private:
    double maxRate_;
    double logFactor_;
    double output_;
    double lastInput_;
};