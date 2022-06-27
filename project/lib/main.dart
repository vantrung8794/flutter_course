import 'dart:math';
import 'package:flutter/material.dart';
import 'list.dart';
import 'containerItem.dart';
import 'nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [FirstRoute()],
      ),
    );
  }
}

class image extends StatelessWidget {
  const image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/img/Rectangle 1.png',
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MyApp(
//       items: List<String>.generate(10000, (i) => 'Item $i'),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   final List<String> items;

//   const MyApp({super.key, required this.items});

//   @override
//   Widget build(BuildContext context) {
//     const title = 'Long List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(title),
//         ),
//         body: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(items[index]),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
