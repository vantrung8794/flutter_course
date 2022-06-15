import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Home'),
        // ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.0),
          VectorWidget(),
          SizedBox(height: 16.0),
          ImagesWidget(),
        ],
      ),
    );
  }
}

class VectorWidget extends StatelessWidget {
  const VectorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 13.59),
        Image.asset(
          'assets/images/Vector.png',
          width: 18.41,
          height: 15.41,
        ),
        SizedBox(width: 117),
        Container(
          child: Text(
            'Tất cả các ảnh',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImagesRowWidget(),
        ImagesRowWidget(),
        ImagesRowWidget(),
        ImagesRowWidget(),
      ],
    );
  }
}

class ImagesRowWidget extends StatelessWidget {
  const ImagesRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6, left: 6, right: 6),
      child: Row(children: [
        ImageWidget(),
        SizedBox(width: 6),
        ImageWidget(),
      ]),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'assets/images/cake.png',
        width: 198,
        height: 210,
        fit: BoxFit.cover,
      ),
    );
  }
}
