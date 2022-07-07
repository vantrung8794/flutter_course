class Student {
  int? id;
  String? name;
  int? age;

  Student({
    this.id,
    this.name,
    this.age,
  });

  void display() {
    print('id: $id - name: $name - age: $age');
  }
}
