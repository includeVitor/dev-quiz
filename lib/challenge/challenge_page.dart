import 'package:flutter/material.dart';
import 'package:nlw5_flutter/challenge/widgets/next_button/next_button_widget.dart';
import 'package:nlw5_flutter/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:nlw5_flutter/challenge/widgets/quiz/quiz_widget.dart';
import 'package:nlw5_flutter/shared/models/question_model.dart';

import 'challenge_controller.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengePage({Key? key, required this.questions}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  final controller = ChallengeController();
  final pageController = PageController();

  @override
  void initState() {
    controller.currentPageNotifier.addListener(() {
      setState(() {});
    });
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              QuestionIndicatorWidget(
                currentPage: controller.currentPage,
                length: widget.questions.length,
              ),
            ],
          ),
        ),
      ),
      body: PageView(
          controller: pageController,
          children:
              widget.questions.map((e) => QuizWidget(question: e)).toList()),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: NextButtonWidget.white(label: "Fácil", onTap: () {})),
              SizedBox(
                width: 7,
              ),
              Expanded(
                  child: NextButtonWidget.green(
                label: "Confirmar",
                onTap: () {},
              ))
            ],
          ),
        ),
      ),
    );
  }
}
