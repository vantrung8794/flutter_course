void main() {
  sayHello(
      name: 'Trung',
      onOk: (count) {
        print(count);
      });
}

void sayHello({
  String? name,
  Function(int)? onOk,
}) {
  print('helo $name');

  onOk?.call(10);
}
