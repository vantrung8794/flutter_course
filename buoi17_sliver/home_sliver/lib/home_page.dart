import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'cake.dart';
import 'category.dart';

final List<String> images = [
  'https://st.quantrimang.com/photos/image/2019/06/26/banh-sinh-nhat-2.jpg',
  'https://www.chuphinhsanpham.vn/wp-content/uploads/2016/07/chup-hinh-banh-dep.jpg',
  'http://quatangabc.com/images/hinhsinhnhat/89.jpg',
  'https://pdp.edu.vn/wp-content/uploads/2021/05/hinh-anh-banh-sinh-nhat-dep-lung-linh.jpg',
];

final List<Category> categories = [
  Category(title: 'Bánh truyền thống', color: 'BE1558'),
  Category(title: 'Chocolate Cake', color: 'F2994A'),
  Category(title: 'Đồ ăn nhanh', color: '2F80ED'),
  Category(title: 'Bánh tráng miệng', color: 'BB6BD9'),
];

final List<Cake> cakes = [
  Cake(
      iamge:
          'https://st.quantrimang.com/photos/image/2019/06/26/banh-sinh-nhat-2.jpg',
      title: 'Banh sinh nhat rat ngon',
      price: 20000,
      rate: 4.0),
  Cake(
      iamge:
          'https://www.chuphinhsanpham.vn/wp-content/uploads/2016/07/chup-hinh-banh-dep.jpg',
      title: 'Banh sinh nhat rat ngon',
      price: 20000,
      rate: 4.0),
  Cake(
      iamge: 'http://quatangabc.com/images/hinhsinhnhat/89.jpg',
      title: 'Banh sinh nhat rat ngon',
      price: 20000,
      rate: 4.0),
  Cake(
      iamge:
          'https://st.quantrimang.com/photos/image/2019/06/26/banh-sinh-nhat-2.jpg',
      title: 'Banh sinh nhat rat ngon',
      price: 20000,
      rate: 4.0),
  Cake(
      iamge: 'http://quatangabc.com/images/hinhsinhnhat/89.jpg',
      title: 'Banh sinh nhat rat ngon',
      price: 20000,
      rate: 4.0),
  Cake(
      iamge:
          'https://www.chuphinhsanpham.vn/wp-content/uploads/2016/07/chup-hinh-banh-dep.jpg',
      title: 'Banh sinh nhat rat ngon',
      price: 20000,
      rate: 4.0),
];

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            TitleWidget(),
            SliderWidget(),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            CategoriesWidget(),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nổi bật',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Tất cả',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF898989),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 148,
                      child: ListView.builder(
                        itemCount: cakes.length,
                        itemBuilder: (_, index) {
                          final item = cakes[index];
                          return Container(
                            width: 200,
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF2994A).withOpacity(0.1),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Image.network(
                                    item.iamge ?? '',
                                    height: 94,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    item.title ?? '',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 6),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${item.price}d',
                                        style: TextStyle(
                                          color: Color(0xFF898989),
                                        ),
                                      ),
                                      Text('${item.rate}',
                                          style: TextStyle(
                                              color: Color(0xFFBE1558))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SliverToboxAdapter
            // Sliver ToboxAdapter
            // Sliver GridView
            // SliverToboxAdapter
            // SliverListview
          ],
        ),
      ),
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // mainAxisSpacing: 18.0,
        // crossAxisSpacing: 18.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final item = categories[index];
          return InkWell(
            onTap: () {
              print(item.title);
            },
            child: Container(
              margin: const EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(int.parse('0xFF${item.color}')),
              ),
              child: Center(
                child: Text(
                  '${item.title}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
        childCount: categories.length,
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  SliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double selectedIndex = 0.0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 164,
            child: CarouselSlider(
              options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: true,
                  onPageChanged: (index, _) {
                    setState(() {
                      selectedIndex = index.toDouble();
                    });
                  }),
              items: images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: double.infinity,
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          // Dots
          SizedBox(height: 8),
          DotsIndicator(
            dotsCount: images.length,
            position: selectedIndex,
            decorator: DotsDecorator(
              color: Color(0xFFBE1558).withOpacity(0.2), // Inactive color
              activeColor: Color(0xFFBE1558),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Chào bạn',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFFBE1558),
              ),
            ),
            Text(
              'Hôm nay bạn có muốn 1 cái bánh không?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Color(0xFF898989),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
