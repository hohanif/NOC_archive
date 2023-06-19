import 'package:flutter/material.dart';
import 'package:quiz_wiki/views/quiz_screen.dart';

class CourseListScreen extends StatelessWidget {
  const CourseListScreen({super.key});

  final List subjectListData = const [
    {"subject_name": "Flutter", "subject_id": "1001"},
    {"subject_name": "React Native", "subject_id": "1002"},
    {"subject_name": "HTML & CSS", "subject_id": "1003"},
    {"subject_name": "Java", "subject_id": "1004"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Course List"),
        backgroundColor: Color.fromARGB(255, 98, 7, 218),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ...subjectListData
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      onTap: () {
                        print(e['subject_id']);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizScreen(),
                          ),
                        );
                      },
                      tileColor: Color.fromARGB(255, 98, 7, 218),
                      textColor: Colors.white,
                      iconColor: Colors.white,
                      title: Text(
                        e['subject_name'],
                      ),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
