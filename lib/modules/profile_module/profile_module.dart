import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/profile_module/view/profile_page.dart';

class ProfileModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void routes(r) {
    r.child('/', child: (context) => const ProfilePage());
  }
}
