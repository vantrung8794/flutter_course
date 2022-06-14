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
        body: MainDetailWidget(),
      ),
    );
  }
}

class MainDetailWidget extends StatelessWidget {
  const MainDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWidget(),
          TitleWidget(),
          ActionWidget(),
          DescriptionWidget(),
          BuyingWidget(),
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/detail_cake.png',
      height: 355,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Bánh sinh nhật 7 màu sặc sỡ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/avatar.png',
                    width: 32,
                    height: 32,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'Nguyen Van Trung',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF898989),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '4.2',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset('assets/images/ic_star.png'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ActionWidget extends StatelessWidget {
  const ActionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 40.0),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset('assets/images/ic_call.png'),
              Text('Liên hệ'),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/ic_nav.png'),
              Text('Chỉ đường'),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/ic_share.png'),
              Text('Chia sẻ'),
            ],
          ),
        ],
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mô tả',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12),
          Text(
              'Bánh sinh nhật 7 màu là bánh rất đặc trưng trong các dịp sinh nhật ở Việt Nam.'),
          SizedBox(height: 24),
          Text(
            'Nguyên liệu',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12),
          Text(
              'Nguyen lieu de lam mon banh nay rat phuc tap. ban can rat nhieu thu de lam.')
        ],
      ),
    );
  }
}

class BuyingWidget extends StatelessWidget {
  const BuyingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
