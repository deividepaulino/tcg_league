import 'package:asp/asp.dart';
import 'package:tcg_league/modules/history_module/models/history_model.dart';
import 'package:tcg_league/modules/history_module/view/states/history_states.dart';

final historyState = Atom<HistoryStates>(HistoryInitialState());

final historyListAtom = Atom<List<HistoryModel>>([]);
