void main() {
  var arr = [1, 5, 6, 12, 19, 20];
  var result = sum_device_2(arr);
  print('Tổng các số chia hết cho 2 trong mảng là: $result');
}

int sum_device_2(List<int> inputArr) {
  int sum = 0;
  for (var item in inputArr) {
    if (item % 2 == 0) {
      sum = sum + item;
    }
  }
  return sum;
}
