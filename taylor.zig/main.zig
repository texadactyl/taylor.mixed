const std = @import("std");

fn taylorSeries(x: f64, terms: u32) f64 {
	var sum: f64 = 1.0; // The first term of the series is 1
	var term: f64 = 1.0; // Used to store the current term value

	var divisor: f64 = 0.0;
	for (1..terms) |n| {
		divisor = @floatFromInt(n);
		term *= x / divisor; // Calculate the n-th term
		sum += term; // Add the current term to the sum
	}

	return sum;
}

pub fn main() !void {
	const x : f64 = 0.5;
	const terms : u32 = 4000000000;
	std.debug.print("\nZif calculation of the Taylor Series for x={d}, terms={}\n", .{x, terms});

	// Calculate and display the result
	var result = taylorSeries(x, 3);
	const t1 = std.time.milliTimestamp();
	result = taylorSeries(x, terms);
	const t2 = std.time.milliTimestamp();
	std.debug.print("The value of e^{d} calculated using {} terms is: {d}\n", .{x, terms, result});
	const elapsed: f64 = @floatFromInt(t2 - t1);
	std.debug.print(">>> Zig elapsed time is: {d} seconds\n", .{elapsed / 1000.0});
}
