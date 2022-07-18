import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bloc/cake_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CakeBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('List Cakes'),
        ),
        body: ListCakeWidget(),
      ),
    );
  }
}

class ListCakeWidget extends StatelessWidget {
  const ListCakeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CakeBloc>();
    bloc.add(GetCakeEvent());

    return BlocListener<CakeBloc, CakeState>(
      listener: (context, state) {
        if (state.message != null) {
          final snackBar = SnackBar(
            content: Text(state.message ?? ''),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: BlocBuilder<CakeBloc, CakeState>(
        builder: (context, state) {
          final listCakes = state.cakes ?? [];
          return ListView.builder(
            itemCount: listCakes.length,
            itemBuilder: ((context, index) {
              final item = listCakes[index];
              return Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(8),
                color: Colors.black12,
                child: Row(
                  children: [
                    Image.network(
                      item.avatar ?? "",
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name ?? '',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Gia: ${item.price}USD",
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
