import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/login_module/login_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        // CoreModule(),
        // LicenseModuleX(),
        // DjSupportModule(),
      ];

  @override
  List<Bind> get binds => [
        // Bind((i) => DjScaffoldMessage()),
        // Bind((i) => DjViewPort()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: LoginModule(),
        ),
      ];
}
