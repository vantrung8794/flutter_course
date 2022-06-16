import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWidget(),
          SizedBox(height: 24.0),
          TitleWidget(),
          SizedBox(height: 24.0),
          Container(height: 1, color: const Color(0xFFF5F5F5)),
          SizedBox(height: 24.0),
          ActionsWidget(),
          SizedBox(height: 24.0),
          Container(height: 1, color: const Color(0xFFF5F5F5)),
          SizedBox(height: 24.0),
          DescriptionWidget(),
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
      'assets/images/banner.png',
      height: 250.0,
      fit: BoxFit.cover,
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bánh sinh nhật 7 màu rực rỡ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [UserInfoWidget(), RateWidget()],
          ),
        ],
      ),
    );
  }
}

class RateWidget extends StatelessWidget {
  const RateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '4.2',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset('assets/images/ic_star.png'),
      ],
    );
  }
}

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            'https://tophinhanh.com/wp-content/uploads/2021/12/anh-avatar-dep-cho-con-gai.jpg',
            width: 32,
            height: 32,
          ),
        ),
        SizedBox(width: 5.0),
        Text(
          'Nguyen Van Trung',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF898989),
          ),
        ),
      ],
    );
  }
}

class ActionsWidget extends StatelessWidget {
  const ActionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
        color: Colors.amberAccent.withOpacity(0.4),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset('assets/images/ic_call.png'),
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
              Image.asset('assets/images/ic_nav.png'),
              SizedBox(height: 6),
              Text(
                'Chỉ đường',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/ic_share.png'),
              SizedBox(height: 6),
              Text(
                'Chia sẻ',
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

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Mô tả ',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12.0),
          Text(
            'Bánh sinh nhật 7 màu là bánh rất đặc trưng trong các dịp sinh nhật ở Việt Nam.',
            style: TextStyle(
              color: Color(0xFF898989),
            ),
          ),
          SizedBox(height: 24),
          Text(
            'Nguyên liệu',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12.0),
          Text(
            'This is really awesome meal for every one in this class.\n This is really awesome meal for every one in this class.\nThis is really awesome meal for every one in this class.',
            style: TextStyle(
              color: Color(0xFF898989),
            ),
          ),
        ],
      ),
    );
  }
}
