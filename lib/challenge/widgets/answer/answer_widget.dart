import 'package:flutter/material.dart';
import 'package:nlw5_flutter/core/app_colors.dart';
import 'package:nlw5_flutter/core/app_text_styles.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;
  const AnswerWidget(
      {Key? key,
      required this.title,
      this.isRight = false,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.body,
          ),
          Container(
            width: 24,
            height: 24,
            child: Icon(Icons.check),
          )
        ],
      ),
    );
  }
}
