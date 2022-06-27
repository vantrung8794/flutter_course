import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile();
          },
        ),
      ),
    );
  }
}
