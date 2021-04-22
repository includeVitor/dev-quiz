import 'package:nlw5_flutter/core/app_images.dart';
import 'package:nlw5_flutter/home/home_state.dart';
import 'package:nlw5_flutter/shared/models/answer_model.dart';
import 'package:nlw5_flutter/shared/models/question_model.dart';
import 'package:nlw5_flutter/shared/models/quiz_model.dart';
import 'package:nlw5_flutter/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Vitor",
      photoUrl: "https://avatars.githubusercontent.com/u/38621315?v=4",
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
          image: AppImages.blocks,
          title: "NLW 5 Flutter",
          level: Level.facil,
          questions: [
            QuestionModel(title: "Está curtindo o Flutter?", answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando Flutter"),
              AnswerModel(title: "Muito top"),
              AnswerModel(title: "Show de bola", isRight: true)
            ])
          ])
    ];
  }
}
