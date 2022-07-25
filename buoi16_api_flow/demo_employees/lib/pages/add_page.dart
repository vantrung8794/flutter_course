import 'package:demo_employees/blocs/add_bloc/add_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class AddNewPage extends StatelessWidget {
  const AddNewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add New"),
        ),
        body: AddNewWidget(),
      ),
    );
  }
}

class AddNewWidget extends StatefulWidget {
  const AddNewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNewWidget> createState() => _AddNewWidgetState();
}

class _AddNewWidgetState extends State<AddNewWidget> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddBloc, AddState>(
      listener: (context, state) {
        if (state.isLoading) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss();
        }

        if (state.isSuccess) {
          showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Thanh cong'),
                content: Text("Tao moi thanh cong"),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Quay lai'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
          // show popup.
        }
      },
      builder: (context, state) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: "Nhap ten",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26, width: 2.0),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Nhap tuoi",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26, width: 2.0),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    // ten moi
                    // tuoi moi
                    final newName = nameController.text;
                    final newAge = ageController.text;
                    final addBloc = context.read<AddBloc>();
                    addBloc.add(AddPressEvent(
                      name: newName,
                      age: int.tryParse(newAge),
                    ));
                  },
                  child: Text("Thêm mới"),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
