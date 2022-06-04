class Employee {
  String? name;
  int startYear;

  Employee({this.name, required this.startYear});

  void display() {
    print('name: $name\nstartYear: $startYear');
  }

  bool isRetired() {
    int numOfExp = 2022 - startYear + 1;
    if (numOfExp > 20) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  Employee employee = Employee(name: 'Trung', startYear: 2000);
  employee.display();
  if (employee.isRetired()) {
    print("Đã nghỉ hưu");
  } else {
    print("Chưa nghỉ hưu");
  }
}
