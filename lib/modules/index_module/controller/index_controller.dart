import 'package:tcg_league/core/dio/custom_dio.dart';
import 'package:tcg_league/modules/index_module/models/challanges_model.dart';
import 'package:tcg_league/modules/index_module/models/profile_model.dart';
import 'package:tcg_league/modules/index_module/view/atoms/index_atoms.dart';
import 'package:tcg_league/modules/index_module/view/states/index_states.dart';

class IndexController {
  final CustomDio dio = CustomDio();

  //login mock
  final List<Map<String, dynamic>> mockChallanges = [
    {
      "challange_name": "Liga Semanal",
      "challange_initial_date": "2021-10-10",
      "challange_final_date": "2021-10-15",
      "challange_type": "Liga",
      "challange_status": "live",
      "total_participants": 10,
      "user_position": 1,
      "user_points": 100,
      "user_wins": 10,
      "user_defeats": 5,
      "user_draws": 3,
      "user_deck": "Deck 1",
    },
    {
      "challange_name": "Liga Semanal",
      "challange_initial_date": "2021-10-10",
      "challange_final_date": "2021-10-15",
      "challange_type": "Copa",
      "challange_status": "closed",
      "total_participants": 10,
      "user_position": 1,
      "user_points": 100,
      "user_wins": 10,
      "user_defeats": 5,
      "user_draws": 3,
      "user_deck": "Deck 1",
    },
    {
      "challange_name": "Liga Semanal",
      "challange_initial_date": "2021-10-10",
      "challange_final_date": "2021-10-15",
      "challange_type": "league",
      "challange_status": "open",
      "total_participants": 10,
      "user_position": 1,
      "user_points": 100,
      "user_wins": 10,
      "user_defeats": 5,
      "user_draws": 3,
      "user_deck": "Deck 1",
    },
  ];

  final Map<String, dynamic> mockProfile = {
    "profile": {
      "user_profile_name": "deivide@teste.com",
      "user_name": "@deividepaulino",
      "wdd": {"wins": 10, "defeats": 5, "draws": 3},
      "profile_picture_path": "",
    },
  };

  getChallangeList() async {
    // indexState.setValue(IndexLoadingState());

    await Future.delayed(const Duration(seconds: 2));

    indexState.setValue(
      IndexSuccessState(
        ProfileModel.fromJson(mockProfile['profile']),
        mockChallanges.map((e) => ChallangeModel.fromJson(e)).toList(),
      ),
    );

    indexProfileAtom.setValue(ProfileModel.fromJson(mockProfile['profile']));

    indexChallangesAtom.setValue(
      mockChallanges.map((e) => ChallangeModel.fromJson(e)).toList(),
    );
  }

  getProfileInfo() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
