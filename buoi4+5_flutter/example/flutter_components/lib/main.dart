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
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo components'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextWidget(),
            Row1Widget(),
            Row2Widget(),
            Column1Widget(),
            RowColumnWidget(),
            Column2Widget(),
            ColumnInputWidget(),
          ],
        ),
      ),
    );
  }
}

class ColumnInputWidget extends StatelessWidget {
  const ColumnInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              hintText: 'Nhap ten',
            ),
          ),
          SizedBox(height: 27),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFBE1558),
            ),
            onPressed: () {
              print('I just pressed the button');
            },
            child: Text('Tiep theo'),
          ),
        ],
      ),
    );
  }
}

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 62),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/ic_call.png',
                width: 32,
                height: 32,
              ),
              SizedBox(height: 6),
              Text(
                'Liên hệ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/ic_call.png',
                width: 32,
                height: 32,
              ),
              SizedBox(height: 6),
              Text(
                'Chia se',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/ic_call.png',
                width: 32,
                height: 32,
              ),
              SizedBox(height: 6),
              Text(
                'Chi duong',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Column2Widget extends StatelessWidget {
  const Column2Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 39,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 19),
          height: 75,
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 56,
            horizontal: 19,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Ho ten',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 9),
              Text(
                'Nguyen van trung',
                style: TextStyle(
                  color: Color(0xFF898989),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Dia chi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 9),
              Text(
                'Làng Vạn Phúc, xã Thịnh Sơn, Huyện Đô Lương, tỉnh Nghệ An, Việt Nam',
                style: TextStyle(
                  color: Color(0xFF898989),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Column1Widget extends StatelessWidget {
  const Column1Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 56,
        horizontal: 19,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Ho ten',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 9),
          Text(
            'Nguyen van trung',
            style: TextStyle(
              color: Color(0xFF898989),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Dia chi',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 9),
          Text(
            'Làng Vạn Phúc, xã Thịnh Sơn, Huyện Đô Lương, tỉnh Nghệ An, Việt Nam',
            style: TextStyle(
              color: Color(0xFF898989),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}

class Row2Widget extends StatelessWidget {
  const Row2Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 26, right: 26),
      child: Row(
        children: [
          Image.asset(
            'assets/images/ic_cloud.png',
            width: 32,
            height: 32,
          ),
          SizedBox(width: 19),
          Expanded(
            child: Container(
              height: 51,
              color: Color(0xFFD9D9D9),
              child: Center(
                child: Text(
                  'Xin chao',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Row1Widget extends StatelessWidget {
  const Row1Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 26, right: 26),
      child: Row(
        children: [
          Image.asset(
            'assets/images/ic_cloud.png',
            width: 32,
            height: 32,
          ),
          SizedBox(width: 19),
          Expanded(
            child: Text(
              'Xin chao cac ban, minh la nguyen van trung',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFF2994A),
          border: Border.all(
            width: 3,
            color: Color(0xFF11BD2C),
          )),
      height: 161,
      child: Center(
        child: Text(
          'Xin chao',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15,
        top: 40,
        right: 15,
      ),
      child: Text(
        'Xin chao cac ban, minh la nguyen van trung',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          color: Color(0xFFBE1558),
        ),
      ),
    );
  }
}
