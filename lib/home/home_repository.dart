import 'package:flutter/services.dart';
import 'package:nlw5_flutter/shared/models/quiz_model.dart';
import 'package:nlw5_flutter/shared/models/user_model.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString("/database/user.json");
    final user = UserModel.fromJson(response);
    return user;
  }

  // Future<List<QuizModel>> getQuizzes() async {
  //   final response = await rootBundle.loadString("/database/quizzes.json");
  // }
}
