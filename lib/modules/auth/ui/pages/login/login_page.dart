import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fideliza_app/modules/app/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Development'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Push to next page'),
          onPressed: () {
            Modular.to.pushNamed(AppRoutes.rootRoute);
          },
        ),
      ),
    );
  }
}
