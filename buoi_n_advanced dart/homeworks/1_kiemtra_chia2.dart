void main() {
  int numb = 6;
  if (isDevide2(numb)) {
    print('$numb chia het cho 2');
  } else {
    print('$numb khong chia het cho 2');
  }
}

bool isDevide2(int number) {
  return number % 2 == 0;
}
