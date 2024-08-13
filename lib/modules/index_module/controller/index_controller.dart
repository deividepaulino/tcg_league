import 'package:dio/dio.dart';
import 'package:tcg_league/core/dio/custom_dio.dart';
import 'package:tcg_league/modules/index_module/models/challanges_model.dart';
import 'package:tcg_league/modules/index_module/models/profile_model.dart';
import 'package:tcg_league/modules/index_module/view/atoms/index_atoms.dart';
import 'package:tcg_league/modules/index_module/view/states/index_states.dart';

class IndexController {
  final Dio dio = CustomDio().dio;

  final Map<String, dynamic> mockProfile = {
    "profile": {
      "user_profile_name": "deivide@teste.com",
      "user_name": "@deividepaulino",
      "wdd": {"wins": 10, "defeats": 5, "draws": 3},
      "profile_picture_path": "",
    },
  };

  getChallangeList() async {
    indexState.setValue(IndexLoadingState());

    // indexState.setValue(
    //   IndexSuccessState(
    //     ProfileModel.fromJson(mockProfile['profile']),
    //     mockChallanges.map((e) => ChallangeModel.fromJson(e)).toList(),
    //   ),
    // );

    final res = await dio.get('/torneios/user/1/detalhes');

    if (res.statusCode == 200) {
      indexProfileAtom.setValue(ProfileModel.fromJson(mockProfile['profile']));

      indexChallangesAtom.setValue(
        ChallangeModel.fromJsonList(res.data),
      );

      indexState.setValue(IndexSuccessState(
        ProfileModel.fromJson(mockProfile['profile']),
        ChallangeModel.fromJsonList(res.data),
      ));
    } else {
      indexState.setValue(IndexErrorState(
        res.data,
      ));
    }
  }

  getProfileInfo() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
