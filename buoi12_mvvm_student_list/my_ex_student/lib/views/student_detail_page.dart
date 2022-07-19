import 'package:flutter/material.dart';
import 'package:my_ex_student/model/student.dart';

class StudentDetailPage extends StatefulWidget {
  StudentDetailPage({Key? key, required this.student}) : super(key: key);
  Student student;
  @override
  State<StudentDetailPage> createState() => _StudentDetailPageState();
}

class _StudentDetailPageState extends State<StudentDetailPage> {
  final ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    ageController.text = '${widget.student.age}';
  }

  @override
  void dispose() {
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${widget.student.name}',
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: 'Nhap tuoi',
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black26),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'id': widget.student.id,
                  'age': int.tryParse(ageController.text)
                });
              },
              child: const Text('Luu'),
            )
          ],
        ),
      ),
    );
  }
}
