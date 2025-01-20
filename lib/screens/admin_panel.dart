import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

class AdminPanel extends StatelessWidget {
  final TextEditingController questionController = TextEditingController();
  final TextEditingController option1Controller = TextEditingController();
  final TextEditingController option2Controller = TextEditingController();
  final TextEditingController option3Controller = TextEditingController();
  final TextEditingController option4Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final QuizController controller = Get.put(QuizController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Panel"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: questionController,
              decoration: InputDecoration(labelText: "Question"),
            ),
            TextField(
              controller: option1Controller,
              decoration: InputDecoration(labelText: "Option 1"),
            ),
            TextField(
              controller: option2Controller,
              decoration: InputDecoration(labelText: "Option 2"),
            ),
            TextField(
              controller: option3Controller,
              decoration: InputDecoration(labelText: "Option 3"),
            ),
            TextField(
              controller: option4Controller,
              decoration: InputDecoration(labelText: "Option 4"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add the question to the quiz
                controller.addQuestion(
                  questionController.text,
                  [
                    option1Controller.text,
                    option2Controller.text,
                    option3Controller.text,
                    option4Controller.text
                  ],
                );
                Get.snackbar("Question Added", "New question has been added");
              },
              child: Text("Add Question"),
            ),
          ],
        ),
      ),
    );
  }
}


