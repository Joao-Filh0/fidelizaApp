import 'package:flutter_modular/flutter_modular.dart';
import 'package:fideliza_app/modules/app/app_routes.dart';
import 'package:fideliza_app/modules/app/ui/pages/manager_app_page/manager_app_page.dart';
import 'package:fideliza_app/modules/auth/auth_module.dart';
import 'package:fideliza_app/modules/loyalty/loyalty_module.dart';
import 'package:fideliza_app/modules/profile/profile_module.dart';

import '../auth/auth_routes.dart';
import '../loyalty/loyalty_routes.dart';
import '../profile/profile_routes.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [AuthModule(), LoyaltyModule(), ProfileModule()];
  @override
  List<Bind> get binds => [
        //Put here yours DataSources

        //Put here yours Repositories

        //Put here yours Usecases

        //Put put here yours Blocs
      ];

  @override
  List<ModularRoute> get routes => [
        //Put put here yours external modules route
        ModuleRoute(AuthRoutes.rootRoute, module: AuthModule()),
        ModuleRoute(LoyaltyRoutes.rootRoute, module: LoyaltyModule()),
        ModuleRoute(ProfileRoutes.rootRoute, module: ProfileModule()),
        //______________________________________________________________________
        //Put put here yours routes
        ChildRoute(AppRoutes.rootRoute,
            child: (context, args) => const ManagerAppPage())
      ];
}
