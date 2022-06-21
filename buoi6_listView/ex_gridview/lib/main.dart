import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class DataImage {
  String? url;
  DataImage({this.url});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Vector.png',
                  width: 18.41,
                  height: 15.41,
                ),
                SizedBox(width: 117),
                Text(
                  'Tất cả các ảnh',
                  style: TextStyle(
                    color: Color(0xFF4F4F4F),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF4F4F4F),
          elevation: 0.0,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  List<DataImage> data = [
    DataImage(
        url:
            'https://bizweb.dktcdn.net/100/333/744/products/4b918258125bd805814a.jpg'),
    DataImage(
        url:
            'https://ameovat.com/wp-content/uploads/2016/02/cach-lam-banh-kem-sinh-nhat-1.jpg'),
    DataImage(
        url:
            'https://bizweb.dktcdn.net/100/333/744/products/4b918258125bd805814a.jpg'),
    DataImage(
        url:
            'https://ameovat.com/wp-content/uploads/2016/02/cach-lam-banh-kem-sinh-nhat-1.jpg'),
    DataImage(
        url:
            'https://bizweb.dktcdn.net/100/333/744/products/4b918258125bd805814a.jpg'),
    DataImage(
        url:
            'https://bizweb.dktcdn.net/100/333/744/products/4b918258125bd805814a.jpg'),
    DataImage(
        url:
            'https://ameovat.com/wp-content/uploads/2016/02/cach-lam-banh-kem-sinh-nhat-1.jpg'),
    DataImage(
        url:
            'https://ameovat.com/wp-content/uploads/2016/02/cach-lam-banh-kem-sinh-nhat-1.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
      ),
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      itemBuilder: (_, index) {
        return ImageWidget(
          item: data[index],
        );
      },
      itemCount: data.length,
    );
    // return Row(
    //   children: [
    //     ImageWidget(
    //       item: DataImage(
    //           url:
    //               'https://bizweb.dktcdn.net/100/333/744/products/4b918258125bd805814a.jpg'),
    //     ),
    //   ],
    // );
  }
}

class ImageWidget extends StatelessWidget {
  ImageWidget({Key? key, this.item}) : super(key: key);
  DataImage? item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.network(
        item?.url ?? '',
        height: 210,
        fit: BoxFit.cover,
      ),
    );
  }
}
