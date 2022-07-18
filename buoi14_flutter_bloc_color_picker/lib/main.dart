import 'package:flutter/material.dart';
import 'pages/color_picker_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorPickerPage(),
    );
  }
}
