import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:resful_api_mock_basic/models/cake.dart';

part 'cake_event.dart';
part 'cake_state.dart';

const endpoint = "https://62d550e215ad24cbf2c442de.mockapi.io/demo/v1/";
// const endpoint = "https://62d550e215ad24cbf2c442de.mockapi.io/demo/v2/";

class CakeBloc extends Bloc<CakeEvent, CakeState> {
  CakeBloc() : super(CakeState()) {
    on<GetCakeEvent>((event, emit) async {
      // try catch - exeption.
      try {
        final path = "cakes";
        var response = await Dio().get(endpoint + path);
        if (response.statusCode != 200 && response.statusCode != 201) {
          emit(CakeState(message: response.statusMessage));
        } else {
          final data = response.data as List;
          final cakes = data.map((e) => Cake.fromJson(e)).toList();
          emit(CakeState(cakes: cakes));
        }
      } on DioError catch (e) {
        emit(CakeState(message: e.message));
      }
    });
  }
}
