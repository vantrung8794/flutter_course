void main() {
  List<int> arr = [1, 2, 5, 4, 6];
  arr.add(100);
  print(arr);
  arr[2] = 20;
  print(arr);
  arr.insert(1, 1);
  print(arr);
  arr.removeWhere((element) => element == 1);
  print(arr);
}
