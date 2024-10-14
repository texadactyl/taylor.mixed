# Estimate: exp(x) is approximately 1.6487 wheere x=0.5 using 100 terms.
# ======================================================================

cd ..

cd taylor.go
go run main.go

cd ../taylor.java
javac main.java
java main

cd ../taylor.rs
cargo run

cd ../taylor.zig
zig run main.zig

