import 'package:tcg_league/core/dio/custom_dio.dart';
import 'package:tcg_league/modules/deck_module/models/deck_model.dart';
import 'package:tcg_league/modules/deck_module/view/atoms/deck_atoms.dart';
import 'package:tcg_league/modules/deck_module/view/states/deck_states.dart';

class DeckController {
  final CustomDio dio = CustomDio();

  //login mock
  final List<Map<String, dynamic>> deckList = [
    {
      "deck_name": "Raging Bolt",
      "deck_format": "Standard",
      "deck_game": "Pokémon TCG",
      "proxies": 0,
      "total_cards": 60,
      "deck_list": [
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
      "deck_name": "Ancient box",
      "deck_format": "Standard",
      "deck_game": "Pokémon TCG",
      "proxies": 4,
      "total_cards": 60,
      "deck_list": [
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
    deckState.setValue(DeckLoadingState());

    await Future.delayed(const Duration(seconds: 1));

    // indexState.setValue(
    //   DeckSuccessState(
    //   ),
    // );

    deckListAtom.setValue(deckList.map((e) => DeckModel.fromJson(e)).toList());

    deckState.setValue(
      DeckSuccessState(
        deckListAtom.value,
      ),
    );
  }

  getProfileInfo() async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
