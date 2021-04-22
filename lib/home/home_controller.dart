import 'package:flutter/material.dart';
import 'package:nlw5_flutter/core/app_images.dart';
import 'package:nlw5_flutter/home/home_state.dart';
import 'package:nlw5_flutter/shared/models/answer_model.dart';
import 'package:nlw5_flutter/shared/models/question_model.dart';
import 'package:nlw5_flutter/shared/models/quiz_model.dart';
import 'package:nlw5_flutter/shared/models/user_model.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Vitor",
      photoUrl: "https://avatars.githubusercontent.com/u/38621315?v=4",
    );

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
          image: AppImages.blocks,
          title: "NLW 5 Flutter",
          level: Level.facil,
          questionAnswered: 1,
          questions: [
            QuestionModel(title: "Está curtindo o Flutter?", answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando Flutter"),
              AnswerModel(title: "Muito top"),
              AnswerModel(title: "Show de bola", isRight: true)
            ]),
            QuestionModel(title: "Está curtindo o Flutter?", answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando Flutter"),
              AnswerModel(title: "Muito top"),
              AnswerModel(title: "Show de bola", isRight: true)
            ])
          ])
    ];
    state = HomeState.success;
  }
}
