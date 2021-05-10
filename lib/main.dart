import 'package:auth_manager_flutter/core/auth_manager.dart';
import 'package:auth_manager_flutter/login/login_view.dart';
import 'package:auth_manager_flutter/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login/login.dart';

void main() => runApp(MultiProvider(
      providers: [
        Provider<AuthenticationManager>(
          create: (context) => AuthenticationManager(context: context),
        )
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SplashView(),
    );
  }
}
