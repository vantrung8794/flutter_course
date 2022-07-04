import 'dart:async';

import 'package:count_stream/models/person.dart';

class CountViewModel {
  // tim hieu getter setter.
  StreamController<Person> countController = StreamController.broadcast();
  Stream<Person> get onCount => countController.stream;

  Person person = Person(name: 'Trung', age: 20);

  void increaseCount() {
    person.increaseAge();
    countController.add(person);
  }
}
