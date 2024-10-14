package main

import (
	"fmt"
	"time"
)

func taylorSeries(x float64, terms uint32) float64 {
	sum := 1.0  // The first term of the series is 1
	term := 1.0 // Used to store the current term value

	for n := uint32(1); n < terms; n++ {
		term *= x / float64(n) // Calculate the n-th term
		sum += term            // Add the current term to the sum
	}

	return sum
}

func main() {
	x := 0.5
	var terms uint32 = 4000000000

	fmt.Printf("\nGolang calculation of the Taylor Series for x=%f, terms=%d\n", x, terms)

	// Calculate and display the result
	result := taylorSeries(x, 3)
	t1 := time.Now()
	result = taylorSeries(x, terms)
	t2 := time.Now()
	fmt.Printf("The value of e^%.2f calculated using %d terms is: %.16f\n", x, terms, result)
	elapsed := t2.Sub(t1)
	fmt.Printf(">>> Golang elapsed time is: %.2f seconds\n", elapsed.Seconds())
}
