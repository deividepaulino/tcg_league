import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/login_module/view/login_page.dart';

class LoginModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  final List<ModularRoute> routes = [
    // Modular.initialRoute : (context, args) => const LoginPage(),

    ChildRoute('/', child: (_, args) => const LoginPage()),
  ];
}
