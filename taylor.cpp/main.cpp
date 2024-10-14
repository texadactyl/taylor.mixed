#include <format>
#include <iostream>
#include <string>
#include <cstdint>
#include <time.h>
#include <math.h>

double taylorSeries(double x, int terms) {
    double sum = 1.0; // The first term of the series is 1
    double term = 1.0; // Used to store the current term value

    for (int n = 1; n < terms; n++) {
        term *= x / n; // Calculate the n-th term
        sum += term;   // Add the current term to the sum
    }

    return sum;
}

int main() {
    double x = 0.5;             // Taylor Series argument (exponent).
    uint32_t terms = 1000000;   // Number of series terms.
    time_t t1, t2;              // Start and stop time.
    double elapsed;             // Elapsed time.

    // Hello.
    std::string infoMsg = std::format("\nC++ calculation of the Taylor Series for x={}, terms={}\n", x, terms);
    std::cout << infoMsg  << std::endl;

    // Warm-up.
    double result = taylorSeries(x, 3);

    // Time the Taylor Series calculations..
    time(&t1);
    result = taylorSeries(x, terms);
    time(&t2);

    // Report.
    infoMsg = std::format("The value of e^{} calculated using {} terms is: {}", x, terms, result);
    std::cout << infoMsg  << std::endl;
    elapsed = difftime(t2, t1);
    infoMsg = std::format("Elapsed time is: {} seconds\n", elapsed);
    std::cout << infoMsg  << std::endl;
}
