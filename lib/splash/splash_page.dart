import 'package:nlw5_flutter/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:nlw5_flutter/core/app_gradients.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Center(child: Image.asset(AppImages.logo)),
      ),
    );
  }
}
