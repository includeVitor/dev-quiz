import 'package:flutter/material.dart';
import 'package:nlw5_flutter/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "nlw5_flutter",
      home: SplashPage(),
    );
  }
}
