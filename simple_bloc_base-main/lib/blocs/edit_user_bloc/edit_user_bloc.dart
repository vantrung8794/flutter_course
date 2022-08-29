import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:simple_bloc_base/datas/datas.dart';

import '../../models/user_info.dart';

part 'edit_user_event.dart';
part 'edit_user_state.dart';

class EditUserBloc extends Bloc<EditUserEvent, EditUserState> {
  EditUserBloc(this._userRemote) : super(EditUserState()) {
    on<GetUserInfoEvent>(_onGetUserInfo);
  }

  final UserRemote _userRemote;

  Future _onGetUserInfo(
      GetUserInfoEvent event, Emitter<EditUserState> emit) async {
    final result = await _userRemote.getUserInfo();
    final newState = result.fold(
      (l) => EditUserState(),
      (r) => EditUserState(user: r),
    );
    emit(newState);
  }
}
