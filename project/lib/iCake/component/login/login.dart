import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => containerHeader();
}

class containerHeader extends State<Login> {
  String _index = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_index'),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _index = _index;
                    });
                  },
                  child: Text('Increase'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
