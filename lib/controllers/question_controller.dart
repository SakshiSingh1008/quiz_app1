import 'package:get/get.dart';
import 'package:quiz_app/screens/scorecard_screen.dart';

class QuizController extends GetxController {
  var currentQuestionIndex = 0.obs;
  var score = 0.obs;
  var totalQuestions = 5;
  var questions = [
    "What is the capital of France?",
    "Who wrote 'Hamlet'?",
    "What is 5 + 3?",
    "What is the largest planet in our solar system?",
    "What is the color of the sky?"
  ];

  var options = [
    ['Paris', 'London', 'Berlin', 'Madrid'],
    ['Shakespeare', 'Hemingway', 'Dickens', 'Austen'],
    ['6', '7', '8', '9'],
    ['Jupiter', 'Mars', 'Earth', 'Saturn'],
    ['Blue', 'Green', 'Red', 'Yellow']
  ];

  var correctAnswers = [0, 0, 2, 0, 0];

  void checkAnswer(int selectedAnswerIndex) {
    if (selectedAnswerIndex == correctAnswers[currentQuestionIndex.value]) {
      score++;
    }
    if (currentQuestionIndex.value < totalQuestions - 1) {
      currentQuestionIndex++;
    }
  }

  void addQuestion(String question, List<String> options) {
    questions.add(question);
    this.options.add(options);
    correctAnswers.add(0); // Default correct answer index
    totalQuestions = questions.length;
  }

  void finishQuiz() {
    Get.snackbar("Quiz Finished", "Your score: $score/$totalQuestions", snackPosition: SnackPosition.BOTTOM);
  }
}
void finishQuiz() {
  // Navigate to the scorecard screen
  Get.to(() => ScorecardScreen());
}


