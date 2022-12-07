import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../auth/auth_routes.dart';

class ManagerAppPage extends StatefulWidget {
  const ManagerAppPage({Key? key}) : super(key: key);

  @override
  State<ManagerAppPage> createState() => _ManagerAppPageState();
}

class _ManagerAppPageState extends State<ManagerAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Development'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Push to next page'),
          onPressed: () {
            Modular.to
                .pushNamed('${AuthRoutes.rootRoute}${AuthRoutes.loginRoute}');
          },
        ),
      ),
    );
  }
}
