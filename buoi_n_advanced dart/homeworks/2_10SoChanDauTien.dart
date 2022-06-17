void main() {
  int totalCount = 10;
  getFirstEvenNumbers(count: totalCount);
}

void getFirstEvenNumbers({required int count}) {
  for (var i = 0; i < count; i++) {
    print(i * 2);
  }
}
