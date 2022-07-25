class Employee {
  final String? name;
  final String? id;
  final int? age;

  Employee({this.name, this.age, this.id});

  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      name: map["name"],
      age: map["age"],
      id: map["id"],
    );
  }
}
