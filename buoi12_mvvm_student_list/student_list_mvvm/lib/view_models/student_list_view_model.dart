import 'dart:async';

import 'package:student_list_mvvm/models/student.dart';

class StudentListViewModel {
  StreamController<List<Student>> streamController =
      StreamController.broadcast();
  Stream<List<Student>> get onChangeList => streamController.stream;

  final List<Student> listStudent = [
    Student(id: 1, name: 'Nguyen Van Trung', age: 23), // 0'
    Student(id: 2, name: 'Nguyen Thi Hai Hien', age: 40), // 1
    Student(id: 3, name: 'Nguyen Van Trung', age: 32), // 2
    Student(id: 4, name: 'Nguyen Vinh', age: 23), // 3
    Student(id: 5, name: 'Dung dep trai', age: 30), // 4
  ];

  void updateAge({
    required int id,
    required int newAge,
  }) {
    for (var index = 0; index < listStudent.length; index = index + 1) {
      if (listStudent[index].id == id) {
        listStudent[index].age = newAge;
      }
    }

    streamController.add(listStudent);

    // tham tri - tham chieu.
    // value type - reference type.

    // listStudent.forEach((element) {
    //   element.display();
    // });
  }
}
