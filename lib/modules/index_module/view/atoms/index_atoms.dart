import 'package:asp/asp.dart';
import 'package:tcg_league/modules/index_module/models/challanges_model.dart';
import 'package:tcg_league/modules/index_module/models/profile_model.dart';
import 'package:tcg_league/modules/index_module/models/table_model.dart';
import 'package:tcg_league/modules/index_module/view/states/index_states.dart';

final indexState = Atom<IndexStates>(IndexInitialState());

final indexProfileAtom = Atom(ProfileModel.empty());

final indexChallangesAtom = Atom<List<ChallangeModel>>([]);

final challangeTableAtom = Atom<TableModel>(TableModel.empty());
