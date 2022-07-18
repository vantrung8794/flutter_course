import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/color_picker/color_picker_bloc.dart';

class ColorPickerPage extends StatelessWidget {
  const ColorPickerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorPickerBloc()..add(OnInit()),
      child: Scaffold(
        body: MainWidget(),
      ),
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorPickerBloc, ColorPickerState>(
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              color: Color(int.parse('0xFF' + (state.selectedColor ?? ''))),
            ),
            GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (_, index) {
                final item = state.listColors[index];
                return InkWell(
                  onTap: () {
                    final bloc = context.read<ColorPickerBloc>();
                    bloc.add(OnChooseColor(color: item));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(int.parse('0xFF' + item)),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        )),
                  ),
                );
              },
              itemCount: state.listColors.length,
            )
          ],
        );
      },
    );
  }
}
