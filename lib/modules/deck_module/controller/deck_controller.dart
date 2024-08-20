import 'package:dio/dio.dart';
import 'package:tcg_league/core/dio/custom_dio.dart';
import 'package:tcg_league/modules/deck_module/models/deck_model.dart';
import 'package:tcg_league/modules/deck_module/view/atoms/deck_atoms.dart';
import 'package:tcg_league/modules/deck_module/view/states/deck_states.dart';

class DeckController {
  final Dio dio = CustomDio().dio;

  getChallangeList() async {
    deckState.setValue(DeckLoadingState());

    await Future.delayed(const Duration(seconds: 1));

    // indexState.setValue(
    //   DeckSuccessState(
    //   ),
    // );

    final res = await dio.get('/decks/user/1');

    if (res.statusCode != 200) {
      deckState.setValue(DeckErrorState('Erro ao buscar decks'));
      return;
    } else {
      deckListAtom.value =
          res.data.map<DeckModel>((e) => DeckModel.fromJson(e)).toList();

      deckState.setValue(DeckSuccessState(deckListAtom.value));
    }
  }

  getProfileInfo() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  postDeck() {
    deckState.setValue(DeckLoadingState());

    dio.post('/decks', data: deckPostAtom.value.toJson()).then((res) {
      if (res.statusCode != 201) {
        deckState.setValue(DeckErrorState('Erro ao criar deck'));
        return;
      }
    });
  }
}
