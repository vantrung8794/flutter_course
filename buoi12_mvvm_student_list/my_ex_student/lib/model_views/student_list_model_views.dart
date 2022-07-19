import 'dart:async';

import '../model/student.dart';

class StudentListViewModel {
  StreamController<List<Student>> streamController =
      StreamController.broadcast();
  Stream<List<Student>> get onChangeList => streamController.stream;

  final List<Student> listStudent = [
    Student(id: 1, name: 'Nguyen A', age: 23),
    Student(id: 2, name: 'Nguyen B', age: 23),
    Student(id: 3, name: 'Nguyen C', age: 23),
    Student(id: 4, name: 'Nguyen D', age: 23),
    Student(id: 5, name: 'Nguyen E', age: 323),
  ];
  void updateAge({
    required int id,
    required int age,
  }) {
    for (int i = 0; i < listStudent.length; i++) {
      if (listStudent[i].id == id) {
        listStudent[i].age = age;
      }
    }
    streamController.add(listStudent);
  }
}
