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
      body: MainWidget(),
    );
  }
}

class MainWidget extends StatefulWidget {
  const MainWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  final List<Color> colors = [
    Colors.black12,
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.orangeAccent,
    Colors.pink,
  ];

  Color? selectedColor;

  @override
  void initState() {
    super.initState();
    selectedColor = colors.first;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: selectedColor,
        ),
        GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final item = colors[index];
            return ColorItem(
              item: item,
              onPressed: (color) {
                setState(() {
                  selectedColor = color;
                });
              },
            );
          },
          itemCount: colors.length,
        )
      ],
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({
    Key? key,
    required this.item,
    this.onPressed,
  }) : super(key: key);

  final Color item;
  final Function(Color)? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed?.call(item);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Colors.white,
          ),
          color: item,
        ),
      ),
    );
  }
}
