import 'package:flutter/material.dart';
import 'package:my_ex_student/views/student_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StudentListPage(),
    );
  }
}
