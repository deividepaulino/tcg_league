import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/deck_module/view/deck_page.dart';

class DeckModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void routes(r) {
    r.child('/', child: (context) => const DeckPage());
  }
}
