import 'package:flutter_modular/flutter_modular.dart';
import 'package:fideliza_app/modules/auth/auth_routes.dart';
import 'package:fideliza_app/modules/auth/ui/pages/login/login_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        //Put here yours DataSources

        //Put here yours Repositories

        //Put here yours Usecases

        //Put put here yours Blocs
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AuthRoutes.loginRoute,
            child: (context, args) => const LoginPage()),
      ];
}
