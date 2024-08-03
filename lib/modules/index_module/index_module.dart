import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/index_module/view/index_page.dart';

class IndexModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void routes(r) {
    r.child('/', child: (context) => const IndexPage());
  }
}
