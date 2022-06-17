import 'package:flutter/material.dart';

class DataItem {
  String? image;
  String? title;
  int? price;
  double? star;

  DataItem({this.image, this.title, this.price, this.star});
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<DataItem> items = [
    DataItem(
      image:
          'https://baoquocte.vn/stores/news_dataimages/dieulinh/012020/29/15/nhung-buc-anh-dep-tuyet-voi-ve-tinh-ban.jpg',
      title: 'Banh ngot 7 mau rat la ngon',
      price: 200000,
      star: 4.2,
    ),
    DataItem(
      image:
          'https://baoquocte.vn/stores/news_dataimages/dieulinh/012020/29/15/nhung-buc-anh-dep-tuyet-voi-ve-tinh-ban.jpg',
      title: 'Banh sinh nhat',
      price: 400000,
      star: 5,
    ),
    DataItem(
      image: 'http://hanoimoi.com.vn/Uploads/tuandiep/2018/4/8/1(1).jpg',
      title: 'Banh ngot 7 mau rat la ngon',
      price: 200000,
      star: 4.2,
    ),
    DataItem(
      image:
          'https://baoquocte.vn/stores/news_dataimages/dieulinh/012020/29/15/nhung-buc-anh-dep-tuyet-voi-ve-tinh-ban.jpg',
      title: 'Banh ngot 7 mau rat la ngon',
      price: 200000,
      star: 4.2,
    ),
    DataItem(
      image:
          'https://baoquocte.vn/stores/news_dataimages/dieulinh/012020/29/15/nhung-buc-anh-dep-tuyet-voi-ve-tinh-ban.jpg',
      title: 'Banh ngot 7 mau rat la ngon',
      price: 200000,
      star: 4.2,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Danh sách bánh',
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          var item = items[index];
          return CakeItem(
            item: item,
          );
        },
        itemCount: items.length,
      ),
    );
  }
}

class CakeItem extends StatelessWidget {
  CakeItem({
    Key? key,
    this.item,
  }) : super(key: key);

  DataItem? item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              item?.image ?? '',
              height: 56,
              width: 56,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(item?.title ?? ''),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item?.price.toString() ?? ''),
                    Text(item?.star.toString() ?? ''),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Mua'),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Yeu thich'),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
