import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:simple_bloc_base/blocs/blocs.dart';
import 'package:simple_bloc_base/constants/ui_constants.dart';

class EditUserPage extends StatelessWidget {
  const EditUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold<EditUserBloc>(
      loadData: (bloc) => bloc?.add(GetUserInfoEvent()),
      title: Text(""),
      body: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: BlocBuilder<EditUserBloc, EditUserState>(
                builder: (context, state) {
                  if (state.user?.avatar == null) {
                    return const SizedBox(
                      width: 152,
                      height: 152,
                    );
                  }
                  return CachedNetworkImage(
                    imageUrl: state.user?.avatar ?? '',
                    width: 152,
                    height: 152,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
          UIConstants.verticalSpace24,
          BlocBuilder<EditUserBloc, EditUserState>(
            builder: (context, state) {
              return TextField(
                controller: TextEditingController()
                  ..text = state.user?.name ?? '',
              );
            },
          ),
          UIConstants.verticalSpace24,
          ElevatedButton(onPressed: () {}, child: Text("Lưu"))
        ],
      ),
    );
  }
}
