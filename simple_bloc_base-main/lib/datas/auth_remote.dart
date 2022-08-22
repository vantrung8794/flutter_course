import 'package:flutter_core/flutter_core.dart';
import '../constants/constants.dart';

class AuthRemote {
  final AppClient _appClient;

  AuthRemote(this._appClient);

  Future<Either<Failure, dynamic>> register({
    required String name,
    required String email,
    required String phone,
    required String pass,
  }) async {
    final result = await _appClient
        .call(ApiConstants.register, method: RestfulMethod.post, data: {
      "name": name,
      "email": email,
      "phone": phone,
      "password": pass,
      "type": "candidate",
      "status": "activated"
    });

    return result;
  }

  Future<Either<Failure, dynamic>> login({
    required String email,
    required String pass,
  }) async {
    final result = await _appClient
        .call(ApiConstants.login, method: RestfulMethod.post, data: {
      "email": email,
      "password": pass,
    });

    return result;
  }
}
