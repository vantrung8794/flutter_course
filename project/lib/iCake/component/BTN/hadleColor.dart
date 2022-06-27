// import 'package:flutter/material.dart';

// class Color extends StatelessWidget {
//   const Color({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const color = [
//       {Colors: "0xFFE65100"},
//       {Colors: "0xFF448AFF"},
//       {Colors: "0xFF76FF03"},
//       {Colors: "0xFFFFFFFF"},
//       {Colors: "0xFFE040FB"},
//       {Colors: "0xFFB71C1C"},
//     ];
//     return Scaffold(
//       backgroundColor: Colors.amber[600],
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(6.0),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           mainAxisSpacing: 6,
//           crossAxisSpacing: 6,
//           childAspectRatio: 210 / 198,
//         ),
//         itemBuilder: (_, index) {
//           return Container(
//             margin: const EdgeInsets.all(10.0),
//             color: Colors(0xFFE65100),
//           );
//         },
//         itemCount: color?.length ?? 0,
//       ),
//     );
//   }
// }
