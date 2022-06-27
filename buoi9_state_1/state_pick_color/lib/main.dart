import 'package:flutter/material.dart';

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
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({
    Key? key,
    this.color,
  }) : super(key: key);
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundWidget(color: color ?? Color(0xFFF2994A)),
        ManageColor()
      ],
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  BackgroundWidget({
    Key? key,
    this.color,
  }) : super(key: key);
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}

class ManageColor extends StatelessWidget {
  ManageColor({Key? key}) : super(key: key);
  List<Color> data = [
    Color(0xFFF2994A),
    Color(0xFF000000),
    Color(0xFF11BD2C),
    Color(0xFFBE1558),
    Color(0xFF4AA1F2),
    Color(0xFF8A23DC),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 27,
        mainAxisSpacing: 32,
      ),
      padding: EdgeInsets.symmetric(vertical: 34.0, horizontal: 17.0),
      itemBuilder: (_, index) {
        return DetailColor(
          item: data[index],
        );
      },
      itemCount: data.length,
    );
  }
}

class DetailColor extends StatefulWidget {
  DetailColor({
    Key? key,
    this.item,
  }) : super(key: key);
  Color? item;

  @override
  State<DetailColor> createState() => _DetailColorState();
}

class _DetailColorState extends State<DetailColor> {
  @override
  void initState() {
    super.initState();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MainPage(color: widget.item)),
          );
        });
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(color: Colors.white),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(widget.item),
      ),
      child: Text(''),
    );
  }
}
