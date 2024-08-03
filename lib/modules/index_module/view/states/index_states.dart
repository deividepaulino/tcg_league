import 'package:tcg_league/modules/index_module/models/challanges_model.dart';
import 'package:tcg_league/modules/index_module/models/profile_model.dart';

sealed class IndexStates {}

class IndexLoadingState extends IndexStates {}

class IndexInitialState extends IndexStates {}

class IndexSuccessState extends IndexStates {
  final ProfileModel profile;
  final List<ChallangeModel>? challanges;

  IndexSuccessState(
    this.profile,
    this.challanges,
  );
}

class IndexErrorState extends IndexStates {
  final String message;

  IndexErrorState(this.message);
}
