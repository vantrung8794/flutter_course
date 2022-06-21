import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class DataItem {
  String? image;
  String? title;
  int? price;
  double? star;

  DataItem({this.image, this.title, this.price, this.star});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Danh sách Bánh',
              style: TextStyle(
                color: Color(0xFF4F4F4F),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
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
  List<DataItem> items = [
    DataItem(
      image:
          'https://baoquocte.vn/stores/news_dataimages/dieulinh/012020/29/15/nhung-buc-anh-dep-tuyet-voi-ve-tinh-ban.jpg',
      title: 'Banh',
      price: 69000,
      star: 4.5,
    ),
    DataItem(
      image:
          'https://baoquocte.vn/stores/news_dataimages/dieulinh/012020/29/15/nhung-buc-anh-dep-tuyet-voi-ve-tinh-ban.jpg',
      title: 'Banh',
      price: 69000,
      star: 4.5,
    ),
    DataItem(
      image:
          'https://baoquocte.vn/stores/news_dataimages/dieulinh/012020/29/15/nhung-buc-anh-dep-tuyet-voi-ve-tinh-ban.jpg',
      title: 'Banh',
      price: 69000,
      star: 4.5,
    ),
    DataItem(
      image:
          'https://baoquocte.vn/stores/news_dataimages/dieulinh/012020/29/15/nhung-buc-anh-dep-tuyet-voi-ve-tinh-ban.jpg',
      title: 'Banh',
      price: 69000,
      star: 4.5,
    ),
    DataItem(
      image:
          'https://baoquocte.vn/stores/news_dataimages/dieulinh/012020/29/15/nhung-buc-anh-dep-tuyet-voi-ve-tinh-ban.jpg',
      title: 'Banh',
      price: 69000,
      star: 4.5,
    ),
    DataItem(
      image:
          'https://baoquocte.vn/stores/news_dataimages/dieulinh/012020/29/15/nhung-buc-anh-dep-tuyet-voi-ve-tinh-ban.jpg',
      title: 'Banh',
      price: 69000,
      star: 4.5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        var item = items[index];
        return CakeItem(
          item: item,
        );
      },
      itemCount: items.length,
    );
  }
}

class CakeItem extends StatelessWidget {
  CakeItem({Key? key, this.item}) : super(key: key);
  DataItem? item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
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
                Text(
                  item?.title ?? '',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item?.price.toString() ?? ''),
                    Row(
                      children: [
                        Text(item?.star.toString() ?? ''),
                        SizedBox(width: 7.07),
                        Image.asset('assets/images/ic_star.png')
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Mua',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFBE1558),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Yeu thich',
                          style: TextStyle(
                            color: Color(0xFFBE1558),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFFFFFF),
                          side: BorderSide(
                            width: 1.0,
                            color: Color(0xFFBE1558),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
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
