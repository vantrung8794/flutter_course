void main() {
  int numb1 = 10;
  int numb2 = 20;
  pt_bac_1(a: numb1, b: numb2);
}

/// Giai phuong trinh ax + b = 0
void pt_bac_1({required int a, required int b}) {
  if (a == 0) {
    if (b == 0) {
      print('PT co Vo So Nghiem');
    } else {
      print('PT Vo nghiem');
    }
  } else {
    print('PT có 1 nghiem : ${-b / a}');
  }
}
