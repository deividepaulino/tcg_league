import 'package:asp/asp.dart';
import 'package:tcg_league/modules/login_module/models/login_model.dart';
import 'package:tcg_league/modules/login_module/view/states/login_states.dart';

final loginState = Atom<LoginStates>(LoginInitialState());

final loginUser = Atom<LoginModel>(LoginModel.empty());

final registerUser = Atom<LoginModel>(LoginModel.empty());
