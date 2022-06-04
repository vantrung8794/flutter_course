void main() {
  double num1 = 10.5;
  double num2 = 1.0;
  double? result = sumDouble(a: num1, b: num2);
  print('Result: $result'); // Result: 11.5
}

double? sumDouble({double? a, double? b}) {
  if (a == null || b == null) {
    return null;
  }
  return a + b;
}
