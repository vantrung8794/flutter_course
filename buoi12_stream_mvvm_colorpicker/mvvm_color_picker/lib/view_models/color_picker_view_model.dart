import 'dart:async';

class ColorPickerViewModel {
  List<String> colors = [
    'F2994A',
    '000000',
    '11BD2C',
    'BE1558',
    '4AA1F2',
    '8A23DC',
  ];

  StreamController colorStreamController = StreamController.broadcast();
  Stream get onChangeColor => colorStreamController.stream;

  void onSelectColor(String color) {
    colorStreamController.add(color);
  }
}
