import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'scorecard_screen.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final QuizController controller = Get.find<QuizController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          // If all questions are answered, navigate to Scorecard Screen
          if (controller.currentQuestionIndex.value >= controller.totalQuestions) {
            controller.finishQuiz(); // Navigate to scorecard
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Question Number and Total Questions
              Text(
                'Question ${controller.currentQuestionIndex.value + 1} of ${controller.totalQuestions}',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              SizedBox(height: 20),

              // Question Text
              Text(
                controller.questions[controller.currentQuestionIndex.value],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),

              // Display Options for the current question
              Column(
                children: List.generate(
                  controller.options[controller.currentQuestionIndex.value].length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.checkAnswer(index); // Check the answer
                        },
                        child: Text(
                          controller.options[controller.currentQuestionIndex.value][index],
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50), backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(vertical: 10),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 30),

              // Display current score
              Text(
                'Score: ${controller.score}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),

              // Optionally, you can add a timer or progress bar here
            ],
          );
        }),
      ),
    );
  }
}


