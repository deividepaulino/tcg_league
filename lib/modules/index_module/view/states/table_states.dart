sealed class TableStates {}

class TableLoadingState extends TableStates {}

class TableInitialState extends TableStates {}

class TableSuccessState extends TableStates {
  TableSuccessState();
}

class TableErrorState extends TableStates {
  final String message;

  TableErrorState(this.message);
}
