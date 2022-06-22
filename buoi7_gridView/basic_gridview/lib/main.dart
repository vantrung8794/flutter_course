import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Demo',
      home: ImageGridWidget(),
    );
  }
}

class ImageGridWidget extends StatelessWidget {
  ImageGridWidget({
    Key? key,
  }) : super(key: key);

  List<String>? listImages = [
    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2F1542062283%2Fchocolate-and-cream-layer-cake-1812-cover.jpg%3Fitok%3DrEWL7AIN&w=800&c=sc&poi=face&q=60',
    'https://hpbd.name/uploads/worigin/2021/07/07/chocolate-birthday-wishes-cake-with-name-edit_2482a.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Pound_layer_cake.jpg/800px-Pound_layer_cake.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5JzJ7TYyB-wzDplIix3yf3JOhWxL-6Cft9g&usqp=CAU',
    'https://product.hstatic.net/1000313040/product/7_491649042b62455294abb5468b891337_master.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Sheet_cake.jpg/1200px-Sheet_cake.jpg',
    'https://sallysbakingaddiction.com/wp-content/uploads/2020/03/fresh-berry-cream-cake.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyzg66tQkRI0ouITaVRkQOhM3lmOLuYoCkVg&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Tất cả hình ảnh',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        foregroundColor: Colors.black87,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(6.0),
        // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: 100,
        //   mainAxisSpacing: 10.0,
        //   crossAxisSpacing: 10.0,
        // ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          childAspectRatio: 210 / 198,
        ),
        itemBuilder: (_, index) {
          final item = listImages?[index];
          return CakeItemWidget(item: item);
        },
        itemCount: listImages?.length ?? 0,
      ),
    );
  }
}

class CakeItemWidget extends StatelessWidget {
  const CakeItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final String? item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      padding: const EdgeInsets.all(16),
      child: Image.network(
        item ?? '',
        fit: BoxFit.cover,
      ),
    );
  }
}
