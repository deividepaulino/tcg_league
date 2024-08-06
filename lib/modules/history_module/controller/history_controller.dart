import 'package:tcg_league/core/dio/custom_dio.dart';
import 'package:tcg_league/modules/history_module/models/history_model.dart';
import 'package:tcg_league/modules/history_module/view/atoms/history_atoms.dart';
import 'package:tcg_league/modules/history_module/view/states/history_states.dart';

class HistoryController {
  final CustomDio dio = CustomDio();

  //login mock
  final List<Map<String, dynamic>> historyList = [
    {
      "history_name": "Raging Bolt",
      "history_format": "Standard",
      "history_game": "Pokémon TCG",
      "proxies": 0,
      "total_cards": 60,
      "history_list": [
        {
          "card_name": "Kissera",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Iron Hands",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Miradion EX",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Giratina VAstro",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Giratina",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Ralts",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Regidrago V",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Regidrago",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Grande Bola",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Gardevoir",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Counter Catch",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Bola de ninho",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Charizard EX",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Lugia",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Pikachu",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        }
      ]
    },
    {
      "history_name": "Ancient box",
      "history_format": "Standard",
      "history_game": "Pokémon TCG",
      "proxies": 4,
      "total_cards": 60,
      "history_list": [
        {
          "card_name": "Kissera",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Iron Hands",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Miradion EX",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Giratina VAstro",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Giratina",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Ralts",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Regidrago V",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Regidrago",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Grande Bola",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Gardevoir",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Counter Catch",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Bola de ninho",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Charizard EX",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Lugia",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        },
        {
          "card_name": "Pikachu",
          "card_quantity": 4,
          "proxies": 0,
          "card_code": "100/100"
        }
      ]
    },
  ];

  getChallangeList() async {
    historyState.setValue(HistoryLoadingState());

    await Future.delayed(const Duration(seconds: 1));

    // indexState.setValue(//   HistorySuccessState(
    //   ),
    // );

    historyListAtom
        .setValue(historyList.map((e) => HistoryModel.fromJson(e)).toList());

    historyState.setValue(
      HistorySuccessState(
        historyListAtom.value,
      ),
    );
  }

  getProfileInfo() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
