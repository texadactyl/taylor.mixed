Taylor Series expansion performance comparison:
* O/S: Ubuntu, Windows, MacOS
* No library functions employed.
* Golang, Java, Rust, Zig

Configuration:
* X = 0.5
* N = Number of terms = 4,000,000,000
* Compute: exp(X) = 1 + X + (X^2 / 2!) + (X^3 / 3!) + ... + (X^N / N!)
* = 1.648721271 on my calculator app
  
Rough execution elapsed times on Github Actions Ubuntu (does not include compile time):
* Golang and Rust 5.5s
* Java 12.4s
* Zig 16.4s

Rough execution elapsed times on my laptop Ubuntu (more reliable):
* Golang 4.84s
* Rust 4.86s
* C++ 5.00s
* Java 10.64s
* Zig 12.27s
