import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/history_module/view/history_page.dart';

class HistoryModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void routes(r) {
    r.child('/', child: (context) => const HistoryPage());
  }
}
