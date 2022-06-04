void main() {
  double num1 = 20.5;
  double num2 = 10;
  mutipleNumber(num2, num1);
}

void mutipleNumber(double num2, double num1) {
  if (num2 == 0) {
    print('Không thể chia cho 0');
  } else {
    double result = num1 / num2;
    print(result);
  }
}
