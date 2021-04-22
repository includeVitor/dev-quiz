import 'package:flutter/material.dart';
import 'package:nlw5_flutter/challenge/widgets/answer/answer_widget.dart';
import 'package:nlw5_flutter/core/app_text_styles.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
              isRight: true,
              isSelected: true,
              title:
                  "Possibilita a criação de aplicativos compliados nativamente"),
          AnswerWidget(
              title:
                  "Possibilita a criação de aplicativos compliados nativamente"),
          AnswerWidget(
              title:
                  "Possibilita a criação de aplicativos compliados nativamente"),
          AnswerWidget(
              title:
                  "Possibilita a criação de aplicativos compliados nativamente"),
        ],
      ),
    );
  }
}
