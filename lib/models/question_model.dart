import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Question extends Equatable {
  final String category;
  final String difficulty;
  final String question;
  final String correctAnswer;
  final List<String> answer;

  Question({
    @required this.category,
    @required this.difficulty,
    @required this.question,
    @required this.correctAnswer,
    @required this.answer
  });

  @override
  // TODO: implement props
  List<Object> get props =>
      [
        category,
        difficulty,
        question,
        correctAnswer,
        answer
      ];

  factory Question.fromMap(Map<String, dynamic> map) {
    if (map == null) {
      return null;
    }
    return Question(category: map['category'] ?? '',
        difficulty: map['difficulty'] ?? '',
        question: map['question'] ?? '',
        correctAnswer: map['correctAnswer'] ?? '',
        answer: List<String>.from(map['answer'] ?? [])
        ..add(map['correctAnswer' ?? ''])
        ..shuffle()
    );
  }
}
