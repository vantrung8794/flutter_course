import 'package:flutter_core/flutter_core.dart';
import 'package:simple_bloc_base/models/user_info.dart';
import '../constants/constants.dart';

class UserRemote {
  final AppClient _appClient;

  UserRemote(this._appClient);

  Future<Either<Failure, User?>> getUserInfo() async {
    final result =
        await _appClient.call(ApiConstants.profile, method: RestfulMethod.get);

    return result.fold(
      (l) => Left(l),
      (r) {
        if (r is Map) {
          final userMap = r["data"] as Map<String, dynamic>;
          final userInfo = User.fromJson(userMap);
          return Right(userInfo);
        }
        return const Right(null);
      },
    );
  }
}
