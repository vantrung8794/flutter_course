class Person {
  String? name;
  int? age;

  Person({this.name, this.age});

  void increaseAge() {
    age = (age ?? 0) + 2;
  }
}
