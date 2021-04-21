import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nlw5_flutter/core/app_colors.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  const LevelButtonWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.levelButtonFacil,
          border: Border.fromBorderSide(
              BorderSide(color: AppColors.levelButtonBorderFacil)),
          borderRadius: BorderRadius.circular(28)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
              color: AppColors.levelButtonTextFacil, fontSize: 13),
        ),
      ),
    );
  }
}
