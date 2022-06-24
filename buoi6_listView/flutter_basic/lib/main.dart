import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Danh sách bánh',
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return Container(
            color: Colors.amberAccent,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            child: Text('Hello $index'),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
