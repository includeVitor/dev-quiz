import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nlw5_flutter/core/app_colors.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;

  NextButtonWidget(
      {required this.label,
      required this.backgroundColor,
      required this.fontColor});

  NextButtonWidget.green(String label)
      : this.backgroundColor = AppColors.green,
        this.fontColor = AppColors.white,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: AppColors.white),
        ),
      ),
    );
  }
}
