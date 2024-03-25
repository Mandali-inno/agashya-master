// // import 'package:flutter/material.dart'; // Import your Question model here

// // class TakeQuiz extends StatefulWidget {
// //   const TakeQuiz({Key? key}) : super(key: key);

// //   @override
// //   State<TakeQuiz> createState() => _TakeQuizState();
// // }

// // class _TakeQuizState extends State<TakeQuiz> {
// //   // Sample list of questions (replace with your actual data)
// //   final List<Question> questions = [
// //     Question(
// //       id: 1,
// //       text: 'Question 1?',
// //       options: ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
// //       correctAnswers: [1, 3], // Index of correct options (1-based)
// //     ),
// //     Question(
// //       id: 2,
// //       text: 'Question 2?',
// //       options: ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
// //       correctAnswers: [0], // Index of correct option (1-based)
// //     ),
// //     // Add more questions here
// //   ];

// //   int currentIndex = 0;
// //   List<int> selectedAnswers = [];

// //   void _nextQuestion() {
// //     setState(() {
// //       if (currentIndex < questions.length - 1) {
// //         currentIndex++;
// //       } else {
// //         // Calculate marks and navigate to UserDashboard
// //         int marks = _calculateMarks();
// //         Navigator.pushReplacementNamed(context, '/UserDashboard', arguments: marks);
// //       }
// //     });
// //   }

// //   void _selectAnswer(int index) {
// //     setState(() {
// //       if (selectedAnswers.contains(index)) {
// //         selectedAnswers.remove(index);
// //       } else {
// //         selectedAnswers.add(index);
// //       }
// //     });
// //   }

// //   int _calculateMarks() {
// //     int marks = 0;
// //     for (int i = 0; i < questions.length; i++) {
// //       List<int> correctAnswers = questions[i].correctAnswers;
// //       List<int> userAnswers = selectedAnswers.where((answer) => questions[i].options[answer] == correctAnswers).toList();
// //       if (userAnswers.length == correctAnswers.length) {
// //         marks++;
// //       }
// //     }
// //     return marks;
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     Question currentQuestion = questions[currentIndex];
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Take Quiz'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(currentQuestion.text),
// //             SizedBox(height: 16.0),
// //             Column(
// //               children: List.generate(
// //                 currentQuestion.options.length,
// //                 (index) => RadioListTile<int>(
// //                   title: Text(currentQuestion.options[index]),
// //                   value: index,
// //                   groupValue: selectedAnswers.contains(index) ? index : null,
// //                   onChanged: _selectAnswer,
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 16.0),
// //             ElevatedButton(
// //               onPressed: _nextQuestion,
// //               child: Text(currentIndex < questions.length - 1 ? 'Next' : 'Finish'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// // import 'package:flutter/material.dart';

// // class TakeQuiz extends StatefulWidget {
// //   const TakeQuiz({Key? key}) : super(key: key);

// //   @override
// //   State<TakeQuiz> createState() => _TakeQuizState();
// // }

// // class _TakeQuizState extends State<TakeQuiz> {
// //   // Sample quiz data
// //   final List<Map<String, dynamic>> sampleQuestions = [
// //     {
// //       'question': 'What is the capital of France?',
// //       'options': ['Paris', 'London', 'Berlin', 'Rome'],
// //       'correctAnswers': ['Paris'],
// //     },
// //     {
// //       'question': 'Which planet is known as the Red Planet?',
// //       'options': ['Venus', 'Mars', 'Jupiter', 'Saturn'],
// //       'correctAnswers': ['Mars'],
// //     },
// //     {
// //       'question': 'Who painted the Mona Lisa?',
// //       'options': [
// //         'Leonardo da Vinci',
// //         'Pablo Picasso',
// //         'Vincent van Gogh',
// //         'Michelangelo'
// //       ],
// //       'correctAnswers': ['Leonardo da Vinci'],
// //     },
// //     // Add more questions here
// //   ];

// //   int currentIndex = 0;
// //   List<String> selectedAnswers = [];

// //   void _selectAnswer(String option) {
// //     setState(() {
// //       if (selectedAnswers.contains(option)) {
// //         selectedAnswers.remove(option);
// //       } else {
// //         selectedAnswers.add(option);
// //       }
// //     });
// //   }

// //   void _nextQuestion() {
// //     setState(() {
// //       currentIndex++;
// //       selectedAnswers.clear(); // Clear selected answers for the next question
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Take Quiz'),
// //       ),
// //       body: currentIndex < sampleQuestions.length
// //           ? _buildQuestionCard(sampleQuestions[currentIndex])
// //           : _buildResultCard(),
// //     );
// //   }

// //   Widget _buildQuestionCard(Map<String, dynamic> questionData) {
// //     return Card(
// //       margin: EdgeInsets.all(16.0),
// //       child: Padding(
// //         padding: EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               'Question ${currentIndex + 1}: ${questionData['question']}',
// //               style: TextStyle(fontWeight: FontWeight.bold),
// //             ),
// //             SizedBox(height: 16.0),
// //             ...List<Widget>.generate(
// //               questionData['options'].length,
// //               (index) => CheckboxListTile(
// //                 title: Text(questionData['options'][index]),
// //                 value: selectedAnswers.contains(questionData['options'][index]),
// //                 onChanged: (value) =>
// //                     _selectAnswer(questionData['options'][index]),
// //               ),
// //             ),
// //             SizedBox(height: 16.0),
// //             ElevatedButton(
// //               onPressed: _nextQuestion,
// //               child: Text('Next Question'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class TakeQuiz extends StatefulWidget {
//   const TakeQuiz({Key? key}) : super(key: key);

//   @override
//   State<TakeQuiz> createState() => _TakeQuizState();
// }

// class _TakeQuizState extends State<TakeQuiz> {
//   // Sample quiz data
//   final List<Map<String, dynamic>> sampleQuestions = [
//     {
//       'question': 'What is the capital of France?',
//       'options': ['Paris', 'London', 'Berlin', 'Rome'],
//       'correctAnswers': ['Paris'],
//     },
//     {
//       'question': 'Which planet is known as the Red Planet?',
//       'options': ['Venus', 'Mars', 'Jupiter', 'Saturn'],
//       'correctAnswers': ['Mars'],
//     },
//     {
//       'question': 'Who painted the Mona Lisa?',
//       'options': [
//         'Leonardo da Vinci',
//         'Pablo Picasso',
//         'Vincent van Gogh',
//         'Michelangelo'
//       ],
//       'correctAnswers': ['Leonardo da Vinci'],
//     },
//     // Add more questions here
//   ];

//   int currentIndex = 0;
//   List<String> selectedAnswers = [];

//   void _selectAnswer(String option) {
//     setState(() {
//       if (selectedAnswers.contains(option)) {
//         selectedAnswers.remove(option);
//       } else {
//         selectedAnswers.add(option);
//       }
//     });
//   }

//   void _nextQuestion() {
//     setState(() {
//       currentIndex++;
//       selectedAnswers.clear(); // Clear selected answers for the next question
//     });
//   }

//   void _previousQuestion() {
//     setState(() {
//       if (currentIndex > 0) {
//         currentIndex--;
//       }
//       selectedAnswers.clear(); // Clear selected answers for the next question
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Take Quiz'),
//       ),
//       body: currentIndex < sampleQuestions.length
//           ? _buildQuestionCard(sampleQuestions[currentIndex])
//           : _buildResultCard(),
//     );
//   }

//   Widget _buildQuestionCard(Map<String, dynamic> questionData) {
//     return Card(
//       margin: EdgeInsets.all(16.0),
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Question ${currentIndex + 1}: ${questionData['question']}',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16.0),
//             ...List<Widget>.generate(
//               questionData['options'].length,
//               (index) => CheckboxListTile(
//                 title: Text(questionData['options'][index]),
//                 value: selectedAnswers.contains(questionData['options'][index]),
//                 onChanged: (value) =>
//                     _selectAnswer(questionData['options'][index]),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: _previousQuestion,
//                   child: Text('Prev Question'),
//                 ),
//                 ElevatedButton(
//                   onPressed: _nextQuestion,
//                   child: Text('Next Question'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildResultCard() {
//     // Calculate and display marks here
//     // Implement your logic to calculate marks based on selectedAnswers and correctAnswers
//     return Card(
//       margin: EdgeInsets.all(16.0),
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               'Quiz Result',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
//             ),
//             SizedBox(height: 16.0),
//             // Display quiz result here
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('Back to Dashboard'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class TakeQuiz extends StatefulWidget {
//   const TakeQuiz({Key? key}) : super(key: key);

//   @override
//   State<TakeQuiz> createState() => _TakeQuizState();
// }

// class _TakeQuizState extends State<TakeQuiz> {
//   late List<Map<String, dynamic>> questions;
//   int currentIndex = 0;
//   List<String> selectedAnswers = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchQuestions();
//   }

//   Future<void> fetchQuestions() async {
//     final Uri url = Uri.parse('https://mid-term-e521e-default-rtdb.firebaseio.com/questions.json');

//     try {
//       final response = await http.get(url);

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = json.decode(response.body);
//         final List<Map<String, dynamic>> fetchedQuestions = [];

//         data.forEach((key, value) {
//           fetchedQuestions.add(value);
//         });

//         setState(() {
//           questions = fetchedQuestions;
//         });
//       } else {
//         print('Failed to fetch questions: ${response.reasonPhrase}');
//       }
//     } catch (error) {
//       print('Error fetching questions: $error');
//     }
//   }

//   void _selectAnswer(String option) {
//     setState(() {
//       if (selectedAnswers.contains(option)) {
//         selectedAnswers.remove(option);
//       } else {
//         selectedAnswers.add(option);
//       }
//     });
//   }

//   void _nextQuestion() {
//     setState(() {
//       currentIndex++;
//       selectedAnswers.clear(); // Clear selected answers for the next question
//     });
//   }

//   void _previousQuestion() {
//     setState(() {
//       if (currentIndex > 0) {
//         currentIndex--;
//       }
//       selectedAnswers.clear(); // Clear selected answers for the next question
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Take Quiz'),
//       ),
//       body: currentIndex < questions.length
//           ? _buildQuestionCard(questions[currentIndex])
//           : _buildResultCard(),
//     );
//   }

//   Widget _buildQuestionCard(Map<String, dynamic> questionData) {
//     return Card(
//       margin: EdgeInsets.all(16.0),
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Question ${currentIndex + 1}: ${questionData['question']}',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16.0),
//             ...List<Widget>.generate(
//               questionData['options'].length,
//               (index) => CheckboxListTile(
//                 title: Text(questionData['options'][index]),
//                 value: selectedAnswers.contains(questionData['options'][index]),
//                 onChanged: (value) =>
//                     _selectAnswer(questionData['options'][index]),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: _previousQuestion,
//                   child: Text('Prev Question'),
//                 ),
//                 ElevatedButton(
//                   onPressed: _nextQuestion,
//                   child: Text('Next Question'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildResultCard() {
//     // Calculate and display marks here
//     // Implement your logic to calculate marks based on selectedAnswers and correctAnswers
//     return Card(
//       margin: EdgeInsets.all(16.0),
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               'Quiz Result',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
//             ),
//             SizedBox(height: 16.0),
//             // Display quiz result here
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('Back to Dashboard'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TakeQuiz extends StatefulWidget {
  const TakeQuiz({Key? key}) : super(key: key);

  @override
  State<TakeQuiz> createState() => _TakeQuizState();
}

class _TakeQuizState extends State<TakeQuiz> {
  late List<Map<String, dynamic>> questions;
  int currentIndex = 0;
  List<List<bool>> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    fetchQuestions();
  }

  Future<void> fetchQuestions() async {
    final Uri url = Uri.parse('https://mid-term-e521e-default-rtdb.firebaseio.com/questions.json');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<Map<String, dynamic>> fetchedQuestions = [];

        data.forEach((key, value) {
          fetchedQuestions.add(value);
        });

        setState(() {
          questions = fetchedQuestions;
          selectedAnswers = List.generate(fetchedQuestions.length, (_) => List.filled(fetchedQuestions[0]['options'].length, false));
        });
      } else {
        print('Failed to fetch questions: ${response.reasonPhrase}');
      }
    } catch (error) {
      print('Error fetching questions: $error');
    }
  }

  void _selectAnswer(int questionIndex, int optionIndex) {
    setState(() {
      for (int i = 0; i < selectedAnswers[questionIndex].length; i++) {
        if (i == optionIndex) {
          selectedAnswers[questionIndex][i] = !selectedAnswers[questionIndex][i];
        } else {
          selectedAnswers[questionIndex][i] = false;
        }
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      currentIndex++;
    });
  }

  void _previousQuestion() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      }
    });
  }

  int _calculateMarks() {
    int marks = 0;
    for (int i = 0; i < questions.length; i++) {
      bool isCorrect = true;
      for (int j = 0; j < questions[i]['options'].length; j++) {
        if ((selectedAnswers[i][j] && !questions[i]['correctAnswers'].contains(j)) ||
            (!selectedAnswers[i][j] && questions[i]['correctAnswers'].contains(j))) {
          isCorrect = false;
          break;
        }
      }
      if (isCorrect) {
        marks++;
      }
    }
    return marks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take Quiz'),
      ),
      body: currentIndex < questions.length
          ? _buildQuestionCard(questions[currentIndex], currentIndex)
          : _buildResultCard(),
    );
  }

  Widget _buildQuestionCard(Map<String, dynamic> questionData, int index) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${index + 1}: ${questionData['question']}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ...List<Widget>.generate(
              questionData['options'].length,
              (optionIndex) => CheckboxListTile(
                title: Text(questionData['options'][optionIndex]),
                value: selectedAnswers[index][optionIndex],
                onChanged: (value) => _selectAnswer(index, optionIndex),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _previousQuestion,
                  child: Text('Prev Question'),
                ),
                ElevatedButton(
                  onPressed: _nextQuestion,
                  child: Text('Next Question'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard() {
    int marks = _calculateMarks();
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Quiz Result: $marks/${questions.length}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
