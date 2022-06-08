import 'dart:html';

void main() {
  List<int> arr = [1, 2, 3, 4];
  arr.replaceRange(1, 3, [0, 0]);
  print(arr); // [1, 0, 0, 4]
}
