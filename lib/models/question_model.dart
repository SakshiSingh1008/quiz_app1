import 'dart:convert';

class Question {
  final int id;
  final String category;
  final String questions;
  final List<String> options;
  final int answer;

  Question({
    required this.id,
    required this.category,
    required this.questions,
    required this.options,
    required this.answer,
  });

  // Convert a Question to a map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'questions': questions,
      'options': options,
      'answer': answer,
    };
  }

  // Create a Question from JSON
  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      category: json['category'],
      questions: json['questions'],
      options: List<String>.from(json['options']),
      answer: json['answer'],
    );
  }

  // Create a Question from JSON string
  factory Question.fromJsonString(String jsonString) {
    return Question.fromJson(jsonDecode(jsonString));
  }
}
