import 'package:meta/meta.dart';
import 'package:quiz_app_flutter/enum/difficulty.dart';
import 'package:quiz_app_flutter/models/question_model.dart';

abstract class BaseQuizRepository {
  Future<List<Question>> getQuestions({
    @required int numQuestions,
    @required int categoryId,
    @required Difficulty difficulty,
  });
}