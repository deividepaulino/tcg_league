import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/join_module/view/join_page.dart';

class JoinModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void routes(r) {
    r.child('/', child: (context) => const JoinPage());
  }
}
