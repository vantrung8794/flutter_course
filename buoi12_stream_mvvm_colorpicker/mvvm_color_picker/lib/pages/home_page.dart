import 'package:flutter/material.dart';
import 'package:mvvm_color_picker/view_models/color_picker_view_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final viewModel = ColorPickerViewModel();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      StreamBuilder(
          stream: viewModel.onChangeColor,
          initialData: viewModel.colors.first,
          builder: (context, snapshot) {
            String colorString = '0xFF${snapshot.data}';
            return Container(
              color: Color(int.parse(colorString)),
            );
          }),
      GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (_, index) {
          final item = viewModel.colors[index];
          final itemString = '0xFF' + item;
          return GestureDetector(
            onTap: () {
              viewModel.onSelectColor(item);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(int.parse(itemString)),
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          );
        },
        itemCount: viewModel.colors.length,
      )
    ]);
  }
}
