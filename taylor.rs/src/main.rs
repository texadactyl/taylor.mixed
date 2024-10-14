use std::time::Instant;

fn taylor_series(x: f64, terms: u32) -> f64 {
    let mut sum = 1.0; // The first term of the series is 1
    let mut term = 1.0; // Used to store the current term value

    for n in 1..terms {
        term *= x / (n as f64); // Calculate the n-th term
        sum += term; // Add the current term to the sum
    }

    sum
}

fn main() {
    // Parameters:
    let x = 0.5;
    let terms = 4000000000;
    println!("\nRust calculation of the Taylor Series for x={}, terms={}", x, terms);

    // Calculate and display the result.
    let _rubbish = taylor_series(x, 3);
    let start = Instant::now();
    let result = taylor_series(x, terms);
    let elapsed = start.elapsed();
    let milliseconds = elapsed.as_millis() as f64;
    println!("The value of e^{} calculated using {} terms is: {}", x, terms, result);
    println!(">>> Rust elapsed time is {} seconds", milliseconds / 1000.0);
}
