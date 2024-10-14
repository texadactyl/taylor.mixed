Taylor Series expansion performance comparison:
* O/S: Ubuntu, Windows, MacOS
* No library functions employed.
* Golang, Java, Rust, Zig

Configuration:
* X = 0.5
* N = Number of terms = 4,000,000,000
* Compute: exp(X) = 1 + X + (X^2 / 2!) + (X^3 / 3!) + ... + (X^N / N!)
  
Rough elapsed times:
* Golang and Rust 5.5s
* Java 12.4s
* Zig 16.4s
