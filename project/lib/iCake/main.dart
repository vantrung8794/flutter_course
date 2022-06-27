import 'package:flutter/material.dart';
import 'component/BTN/hadleColor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
  ];
  var _index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors[_index],
      body: GridView.builder(
        padding: const EdgeInsets.all(6.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          childAspectRatio: 100 / 100,
        ),
        itemBuilder: (_, index) {
          return ListTile(
            tileColor: _colors[index],
            onTap: () {
              setState(() {
                _index = index;
              });
            },
          );
        },
        itemCount: _colors?.length ?? 0,
      ),
    );
  }
}
