public class main {
    public static void main(String[] args) {
        double x = 0.5;
        long terms = 4000000000l;
        System.out.printf("\nJava calculation of the Taylor Series for x=%f, terms=%d\n", x, terms);

        long t1 = System.currentTimeMillis();
        double result = taylorExp(x, terms);
        long t2 = System.currentTimeMillis();
        
        System.out.printf("e^%.2f ≈ %.10f%n", x, result);
        double elapsed = t2 - t1;
        System.out.printf(">>> Java elapsed time is: %.2f seconds\n", elapsed / 1000.0);
    }

    public static double taylorExp(double x, long terms) {
        double sum = 1.0; // The first term of the series is 1
        double term = 1.0; // Used to store the current term value

        for (long n = 1; n < terms; n++) {
            term *= x / n; // Calculate the n-th term
            sum += term;   // Add the current term to the sum
        }

        return sum;
    }
}
