import 'package:tcg_league/modules/history_module/models/history_model.dart';

sealed class HistoryStates {}

class HistoryLoadingState extends HistoryStates {}

class HistoryInitialState extends HistoryStates {}

class HistorySuccessState extends HistoryStates {
  final List<HistoryModel>? deckLists;

  HistorySuccessState(
    this.deckLists,
  );
}

class HistoryErrorState extends HistoryStates {
  final String message;

  HistoryErrorState(this.message);
}
