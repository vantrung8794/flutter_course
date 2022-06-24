import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    this.name,
  }) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello, My name is $name'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop('hello, back data');
              },
              child: Text('Back and send data'),
            ),
          ],
        ),
      ),
    );
  }
}
