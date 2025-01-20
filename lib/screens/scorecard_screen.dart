import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';


class ScorecardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final QuizController controller = Get.find<QuizController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Scorecard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Quiz Completed!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Total Questions: ${controller.totalQuestions}',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Correct Answers: ${controller.score}',
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your Score: ${controller.score}/${controller.totalQuestions}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Optionally, navigate back to home or another screen
                Get.offAllNamed('/home');
              },
              child: Text("Go to Home"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
