import 'package:flutter/foundation.dart';

class Cake {
  String? name;
  String? avatar;
  int? price;
  String? id;

  Cake({this.name, this.avatar, this.price, this.id});

  factory Cake.fromJson(Map<String, dynamic> map) {
    return Cake(
      name: map["name"],
      avatar: map["avatar"],
      id: map["id"],
      price: map["price"],
    );
  }
}
