import 'package:flutter/material.dart';
import 'package:student_list_mvvm/models/student.dart';
import 'package:student_list_mvvm/view_models/student_list_view_model.dart';
import 'package:student_list_mvvm/views/student_detail_page.dart';

class StudentListPage extends StatelessWidget {
  StudentListPage({Key? key}) : super(key: key);

  final studentsViewModel = StudentListViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ds hoc sinh'),
      ),
      body: StreamBuilder<List<Student>>(
          stream: studentsViewModel.onChangeList,
          initialData: studentsViewModel.listStudent,
          builder: (context, snapshot) {
            return ListView.builder(
              itemBuilder: (_, index) {
                final item = snapshot.data?[index];
                return InkWell(
                  onTap: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              StudentDetailPage(student: item!)),
                    );
                    if (result is Map) {
                      studentsViewModel.updateAge(
                          id: result['id'], newAge: result['age']);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${item?.id ?? ''}'),
                        const SizedBox(width: 26),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item?.name ?? '',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text('${item?.age ?? ''} Tuoi'),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: studentsViewModel.listStudent.length,
            );
          }),
    );
  }
}
