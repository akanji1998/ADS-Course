void main() {
  /*
    write a function to perform interger division
    without using either the / or *
    find a faster way to do it.
  */

  /* SOLUTION PROCESS
    to find solution we will use the method that
    consist of repeatedly substract the divisor from the
    dividend until the dividend beomes smaller than the divisor,
    then count how many times you substracted.
  */

  int makeDivision({required int dividend, required int divisor}) {
    int result = 0;
    while (dividend >= divisor) {
      dividend -= divisor;
      result++;
    }
    return result;
  }

  int dividend = 100;
  int divisor = 10;

  print("division of $dividend by $divisor is ${makeDivision(dividend: dividend, divisor: divisor)}");
}
