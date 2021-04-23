import 'package:flutter/material.dart';
import 'package:nlw5_flutter/challenge/widgets/answer/answer_widget.dart';
import 'package:nlw5_flutter/core/app_text_styles.dart';
import 'package:nlw5_flutter/shared/models/answer_model.dart';
import 'package:nlw5_flutter/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;
  AnswerModel answer(int index) => widget.question.answers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          Text(
            widget.question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          for (var i = 0; i < widget.question.answers.length; i++)
            AnswerWidget(
              answer: answer(i),
              isSelected: indexSelected == i,
              onTap: () {
                indexSelected = i;
                setState(() {});
              },
            ),
        ],
      ),
    );
  }
}
