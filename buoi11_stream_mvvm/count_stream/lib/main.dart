import 'dart:async';

import 'package:flutter/material.dart';

StreamController countController = StreamController.broadcast();
Stream onCount = countController.stream;

int count = 0;

void increaseCount() {
  count = count + 2;
  countController.add(count);
}

// -------------------------------------------------------

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: MainWidget(),
    );
  }
}

class MainWidget extends StatelessWidget {
  MainWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
              stream: onCount,
              initialData: 0,
              builder: (_, snapshot) {
                return Text(
                  '${snapshot.data}',
                  style: TextStyle(fontSize: 48),
                );
              }),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              increaseCount();
            },
            child: Text('Increase'),
          )
        ],
      ),
    );
  }
}
