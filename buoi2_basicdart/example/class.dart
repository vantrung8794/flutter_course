void main() {
  Person trung = Person(name: 'Trung', age: 32);
  trung.display();
}

class Person {
  String? name;
  int? age;

  // Constructor
  Person({this.name, this.age});

  void display() {
    print('Minh ten la: $name, $age tuoi');
  }
}
