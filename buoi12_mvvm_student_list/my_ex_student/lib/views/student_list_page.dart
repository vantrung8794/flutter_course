import 'package:flutter/material.dart';

import '../model_views/student_list_model_views.dart';
import 'student_detail_page.dart';

class StudentListPage extends StatelessWidget {
  StudentListPage({Key? key}) : super(key: key);
  final studentsViewModel = StudentListViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: StreamBuilder<Object>(
          stream: studentsViewModel.onChangeList,
          initialData: studentsViewModel.listStudent,
          builder: (context, snapshot) {
            return ListView.builder(
              itemBuilder: (_, index) {
                return InkWell(
                  onTap: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentDetailPage(
                              student: studentsViewModel.listStudent[index])),
                    );

                    if (result is Map) {
                      studentsViewModel.updateAge(
                          id: result['id'], age: result['age']);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${studentsViewModel.listStudent[index].id}'),
                        const SizedBox(width: 26),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${studentsViewModel.listStudent[index].name}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                                '${studentsViewModel.listStudent[index].age} Tuoi'),
                          ],
                        ),
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
