import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewHomePage(),
    );
  }
}

class NewHomePage extends StatelessWidget {
  const NewHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          child: Text('Go to Old home'),
        ),
      ),
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
      body: MainWidget(
        count: 10,
      ),
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({
    Key? key,
    this.count,
  }) : super(key: key);

  int? count;

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  // Vì widget.count là final. khôgn thể thay đổi.
  // nên phải tạo 1 biến mới để xử lý.

  int? newCount;

  @override
  void initState() {
    super.initState();
    newCount = widget.count;
  }

  @override
  void dispose() {
    newCount = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${newCount}',
            style: TextStyle(fontSize: 48),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.count = (widget.count ?? 0) + 1;
              });
            },
            child: Text('Increase'),
          )
        ],
      ),
    );
  }
}
