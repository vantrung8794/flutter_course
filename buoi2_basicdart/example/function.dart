void main() {
  int age = countAge(birthYear: 1994);
  print(age);
}

int countAge({int? birthYear}) {
  int age = 2022 - (birthYear ?? 2000);
  return age;
}
