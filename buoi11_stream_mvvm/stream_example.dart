import 'dart:async';

void main() async {
  StreamController streamController = StreamController.broadcast();
  final stream = streamController.stream;

  stream.listen((event) {
    print(event);
  });

  for (var i = 0; i < 10; i++) {
    streamController.add(i);
  }
}
