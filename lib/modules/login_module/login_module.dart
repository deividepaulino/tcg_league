import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/login_module/view/login_page.dart';

class LoginModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void routes(r) {
    r.child('/', child: (context) => const LoginPage());
  }
}
