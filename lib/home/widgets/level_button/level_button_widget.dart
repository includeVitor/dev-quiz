import 'package:flutter/material.dart';
import 'package:nlw5_flutter/core/app_colors.dart';

class LevelButtonWidget extends StatelessWidget {
  LevelButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.levelButtonFacil,
          border: Border.fromBorderSide(
              BorderSide(color: AppColors.levelButtonBorderFacil)),
          borderRadius: BorderRadius.circular(28)),
      child: Text("Fácil"),
    );
  }
}
