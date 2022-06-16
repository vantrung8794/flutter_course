import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWidget(),
          SizedBox(height: 12.0),
          TitleWidget(),
          SizedBox(height: 12.0),
          Container(height: 1, color: const Color(0xFFF5F5F5)),
          SizedBox(height: 9.0),
          ActionsWidget(),
          SizedBox(height: 9.0),
          Container(height: 1, color: const Color(0xFFF5F5F5)),
          SizedBox(height: 12.0),
          MenuWidget(),
          DescriptionWidget(),
          SizedBox(height: 47),
          BuyingWidget()
          // CakeWidget()
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
            children: [
              UserInfoWidget(),
              RateWidget(),
            ],
          ),
        ],
      ),
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
        borderRadius: BorderRadius.circular(12.0),
        color: Color(0xFFF2F2F2),
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

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            width: 118,
            height: 36,
            margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 17.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xFFF2F2F2),
            ),
            child: Center(
              child: Text(
                'Thông tin',
                style: TextStyle(
                  color: Color(0xFFBE1558),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        // SizedBox(height: 43.0),
        Expanded(
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6.0),
                child: Center(
                  child: Text(
                    'Liên Quan',
                    style: TextStyle(color: Color(0xFF898989)),
                  ),
                ))),
        // SizedBox(height: 43.0),
        Expanded(
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6.0),
                child: Center(
                  child: Text(
                    'Bình Luận',
                    style: TextStyle(color: Color(0xFF898989)),
                  ),
                ))),
      ],
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
            '1. 500g/1lb 2oz salted butter, at room temperature, plus extra for greasing the tins \n2. 500g/1lb 2oz caster sugar\n3. 10 large free-range eggs, lightly beaten\n3 tbsp vanilla extract/n3. 500g/1lb 2oz self-raising flour, plus extra for dusting the tins',
            style: TextStyle(
              color: Color(0xFF898989),
            ),
          ),
        ],
      ),
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
          child:
              // Image.network(
              //   'https://haycafe.vn/wp-content/uploads/2021/11/Anh-avatar-dep-chat-lam-hinh-dai-dien.jpg',
              //   width: 32,
              //   height: 32,
              // ),
              Image.asset(
            'assets/images/avatar.png',
            width: 32,
            height: 32,
          ),
        ),
        SizedBox(width: 5.0),
        Text(
          'Nguyen Cong Dung',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF898989),
          ),
        ),
      ],
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

class BuyingWidget extends StatelessWidget {
  const BuyingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F5F5),
      padding: const EdgeInsets.symmetric(vertical: 17),
      child: Row(children: [
        // MainAxisAlignment
        PriceBuyingWidget(),
        Expanded(child: SizedBox()),
        BuyingButtonWidget(),
      ]),
    );
  }
}

class BuyingButtonWidget extends StatelessWidget {
  const BuyingButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      width: 127,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), color: Color(0xFFBE1558)),
      child: Center(
        child: Text(
          'Mua',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class PriceBuyingWidget extends StatelessWidget {
  const PriceBuyingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Text(
        '696.696đ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class CakeWidget extends StatelessWidget {
  const CakeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          RowCakeWidget(),
          SizedBox(height: 3.0),
          RowCakeWidget(),
        ],
      ),
    );
  }
}

class RowCakeWidget extends StatelessWidget {
  const RowCakeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      DetailCakeWidget(),
      SizedBox(width: 4.0),
      DetailCakeWidget(),
    ]);
  }
}

class DetailCakeWidget extends StatelessWidget {
  const DetailCakeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        'assets/images/cake.png',
        height: 210.0,
        fit: BoxFit.cover,
      ),
    ));
  }
}
