import 'dart:convert';

import 'package:nlw5_flutter/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAnswered;
  final String image;
  final Level level;

  QuizModel(
      {required this.title,
      required this.questions,
      this.questionAnswered = 0,
      required this.image,
      required this.level});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions?.map((x) => x.toMap())?.toList(),
      'questionAnswered': questionAnswered,
      'image': image,
      'level': level.toMap(),
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      map['title'],
      List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
      map['questionAnswered'],
      map['image'],
      Level.fromMap(map['level']),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
