import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddQuestionPage extends StatefulWidget {
  @override
  _AddQuestionPageState createState() => _AddQuestionPageState();
}

class _AddQuestionPageState extends State<AddQuestionPage> {
  TextEditingController questionController = TextEditingController();
  TextEditingController option1Controller = TextEditingController();
  TextEditingController option2Controller = TextEditingController();
  TextEditingController option3Controller = TextEditingController();
  TextEditingController option4Controller = TextEditingController();

  

  List<bool> correctAnswers = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Question'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: questionController,
                decoration: InputDecoration(labelText: 'Question'),
              ),
              TextField(
                controller: option1Controller,
                decoration: InputDecoration(labelText: 'Option 1'),
              ),
              TextField(
                controller: option2Controller,
                decoration: InputDecoration(labelText: 'Option 2'),
              ),
              TextField(
                controller: option3Controller,
                decoration: InputDecoration(labelText: 'Option 3'),
              ),
              TextField(
                controller: option4Controller,
                decoration: InputDecoration(labelText: 'Option 4'),
              ),
              SizedBox(height: 16),
              Text('Select correct answer(s):'),
              CheckboxListTile(
                title: Text('Option 1'),
                value: correctAnswers[0],
                onChanged: (value) {
                  setState(() {
                    value = true;
                    correctAnswers[0] = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Option 2'),
                value: correctAnswers[1],
                onChanged: (value) {
                  setState(() {
                    value = true;
                    correctAnswers[1] = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Option 3'),
                value: correctAnswers[2],
                onChanged: (value) {
                  setState(() {
                    value = true;
                    correctAnswers[2] = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Option 4'),
                value: correctAnswers[3],
                onChanged: (value) {
                  setState(() {
                    value = true;
                    correctAnswers[3] = value!;
                  });
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  saveQuestion();
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final Uri _url = Uri.parse('https://mid-term-e521e-default-rtdb.firebaseio.com/questions.json');

Future<void> saveQuestions(Map<String, dynamic> questionData) async {
  try {
    final response = await http.post(
      _url,
      body: json.encode(questionData),
    );

    if (response.statusCode == 200) {
      print('Question saved successfully');
    } else {
      print('Failed to save question');
    }
  } catch (error) {
    print('Error saving question: $error');
  }
}

  Future<void> saveQuestion() async {
    // Construct the question object
    Map<String, dynamic> newQuestion = {
      'question': questionController.text,
      'options': [
        option1Controller.text,
        option2Controller.text,
        option3Controller.text,
        option4Controller.text,
      ],
      'correctAnswers': [],
    };

    // Add the indices of correct answers to the new question object
    for (int i = 0; i < correctAnswers.length; i++) {
      if (correctAnswers[i]) {
        newQuestion['correctAnswers'].add(i);
      }
    }

    try {
    await saveQuestions(newQuestion);
  } catch (error) {
    // Handle error
    print('Error occurred: $error');
  }

    // For now, let's just print the new question
    print('New Question: $newQuestion');
   

    // Navigate back to the previous page
    Navigator.pop(context);
  }
  
}
