void main() {
  var employee = new Employee(name: "Dung");
  employee.display();
  employee.isRetired();
}

class Employee {
  String? name;
  var startYear = 2000;
  var endYear = 2022;
  Employee({this.name});
  void display() {
    print("Toi ten la $name \nToi lam viec tu nam $startYear");
  }

  void isRetired() {
    var year = endYear - startYear;
    if (year > 20) {
      print("Toi da ve huu");
    } else {
      print("Toi chua ve huu");
    }
  }
}
