import 'package:count_stream/models/person.dart';
import 'package:count_stream/view_models/count_view_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: MainWidget(),
    );
  }
}

class MainWidget extends StatelessWidget {
  MainWidget({
    Key? key,
  }) : super(key: key);

  var countViewModel = CountViewModel();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<Person>(
              stream: countViewModel.onCount,
              initialData: countViewModel.person,
              builder: (context, snapshot) {
                return Text(
                  '${snapshot.data?.age}',
                  style: TextStyle(fontSize: 48),
                );
              }),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              countViewModel.increaseCount();
            },
            child: Text('Increase'),
          )
        ],
      ),
    );
  }
}
