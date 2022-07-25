import 'package:demo_employees/pages/add_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../blocs/list_bloc/list_bloc.dart';

class ListEmployeePage extends StatelessWidget {
  const ListEmployeePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListBloc()..add(LoadEmployeesEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("List Employee"),
        ),
        floatingActionButton: ButtonWidget(),
        body: ListWidget(),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddNewPage()),
        );
        final listBloc = context.read<ListBloc>();
        listBloc.add(LoadEmployeesEvent());
      },
      backgroundColor: Colors.redAccent,
      child: const Icon(Icons.add),
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ListBloc, ListState>(
      listener: (context, state) {
        if (state.isLoading) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss();
        }
      },
      child: BlocBuilder<ListBloc, ListState>(
        builder: (context, state) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final item = state.employees?[index];
              return Container(
                color: Color(0xFFF5F5F5),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      item?.name ?? '',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "${item?.age} years old",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF898989),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: state.employees?.length,
          );
        },
      ),
    );
  }
}
