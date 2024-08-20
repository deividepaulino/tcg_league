import 'package:asp/asp.dart';
import 'package:tcg_league/modules/deck_module/models/deck_model.dart';
import 'package:tcg_league/modules/deck_module/view/states/deck_states.dart';

final deckState = Atom<DeckStates>(DeckInitialState());

final deckListAtom = Atom<List<DeckModel>>([]);

final deckPostAtom = Atom<DeckModel>(DeckModel.empty());
