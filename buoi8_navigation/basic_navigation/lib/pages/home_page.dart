import 'package:basic_navigation/pages/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'home',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: myController,
            ),
            ElevatedButton(
              onPressed: () async {
                // Async va await de hung du lieu back ve.
                var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      name: myController.text,
                    ),
                  ),
                );
                // xu ly khi hung duoc result
                print(result);
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
