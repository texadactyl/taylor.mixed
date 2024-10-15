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

Measuring execution elapsed times  off-line systems are more reliable than Github Actions (varying system-wide loads).

==================

Xubuntu 24.04.up-to-date (Acer A515-44-R2SA, AMD Ryzen 7 4700U 2- 4.1 GHz, 16GB RAM)
* Golang 4.84s
* Rust 4.86s
* C++ 5.00s
* Java 10.64s
* Zig 12.27s

==================

Windows 11 x64 (IntelUltra 7 155H @3.80 GHz, 32GB RAM)

* Rust 3.77
* Golang 4.32s
* Zig 9.94
* Java 22.18 (best result of several runs)
  
