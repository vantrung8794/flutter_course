// lop hoc
//

class Facebook {
  String? username;
  String? password;

  void login() {
    // login
  }

  void register() {
    // register
  }
}

class Product {
  String? title;
  int? quantity;
  double? price;

  void increasePrice() {
    price = price ?? 0 + 100;
  }

  bool kiem_tra_con_hang() {
    return (quantity ?? 0) >= 0;
  }
}

class Room {
  String? name;
  int? totalPerson;
  final int MAX_PERSON = 5;
  Room({this.name, this.totalPerson});
  void display() {
    print("name: $name - total: $totalPerson");
  }

  void increase() {
    if (!isFullStudent()) totalPerson = totalPerson ?? 0 + 1;
  }

  bool isFullStudent() {
    return totalPerson == MAX_PERSON;
  }
}

void main(List<String> args) {
  var lop_thay_Trung = new Room(name: "lop thay trung", totalPerson: 5);
  lop_thay_Trung.display();
}
