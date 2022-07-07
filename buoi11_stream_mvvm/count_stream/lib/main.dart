import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(child: Text('Danh sách bánh')),
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            elevation: 0),
        body: ListView.builder(
          itemBuilder: (_, index) {
            return ListItem();
          },
          itemCount: 2,
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(
              0xFFBE1558,
            )),
        child: Row(
          children: [
            Image.asset('assets/images/ic_avatar.png', height: 32, width: 32),
            SizedBox(width: 12),
            Column(
              children: [
                Text(
                  'Bánh sinh nhật 7 màu rực rỡ',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Text(
                      '200.000d',
                      style: TextStyle(
                          color: Color(0xFF898989),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Text('4.2'),
                        Image.asset(
                          'assets/images/ic_star.png',
                          height: 32,
                          width: 32,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
