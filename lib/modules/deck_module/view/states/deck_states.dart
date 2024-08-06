import 'package:tcg_league/modules/deck_module/models/deck_model.dart';

sealed class DeckStates {}

class DeckLoadingState extends DeckStates {}

class DeckInitialState extends DeckStates {}

class DeckSuccessState extends DeckStates {
  final List<DeckModel>? deckLists;

  DeckSuccessState(
    this.deckLists,
  );
}

class DeckErrorState extends DeckStates {
  final String message;

  DeckErrorState(this.message);
}
