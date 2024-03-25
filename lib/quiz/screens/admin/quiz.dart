// // import 'package:agashya/quiz/screens/admin/add_quiz.dart';
// // import 'package:flutter/material.dart';

// // class AdminQuiz extends StatefulWidget {
// //   const AdminQuiz({super.key});

// //   @override
// //   State<AdminQuiz> createState() => _AdminQuizState();
// // }

// // class _AdminQuizState extends State<AdminQuiz> {
// //   // Sample list of questions (replace it with your actual data)
// //   List<Map<String, dynamic>> questions = [
// //     {
// //       'question': 'What is the capital of France?',
// //       'options': ['Paris', 'London', 'Berlin', 'Rome'],
// //       'correctAnswerIndex': 0,
// //       'option1Index':1,
// //       'option2Index':2,
// //       'option3Index':3,
// //     },
// //     {
// //       'question': 'Who wrote "Romeo and Juliet"?',
// //       'options': ['William Shakespeare', 'Jane Austen', 'Charles Dickens', 'Leo Tolstoy'],
// //       'correctAnswerIndex': 0,
// //       'option1Index':1,
// //       'option2Index':2,
// //       'option3Index':3,

// //     },
// //     // Add more questions as needed
// //   ];

// //   TextEditingController questionController = TextEditingController();
// //   TextEditingController answerController = TextEditingController();
// //   TextEditingController option1Controller = TextEditingController();
// //   TextEditingController  option2Controller = TextEditingController();
// //   TextEditingController  option3Controller = TextEditingController();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Quiz"),
// //       ),
// //       body: ListView.builder(
// //         itemCount: questions.length,
// //         itemBuilder: (context, index) {
// //           return Card(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 ListTile(
// //                   title: Text(questions[index]['question']),
// //                   onTap: () {
// //                     _showAnswerDialog(
// //                         context, questions[index]['options'][questions[index]['correctAnswerIndex']]);
// //                   },
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //                   child: Text(
// //                     'Correct Answer: ${questions[index]['options'][questions[index]['correctAnswerIndex']]}',
// //                     style: TextStyle(fontStyle: FontStyle.italic),
// //                   ),
// //                 ),
// //                 ButtonBar(
// //                   children: [
// //                     IconButton(
// //                       icon: Icon(Icons.edit),
// //                       onPressed: () {
// //                         _editQuestion(index);
// //                       },
// //                     ),
// //                     IconButton(
// //                       icon: Icon(Icons.delete),
// //                       onPressed: () {
// //                         _deleteQuestion(index);
// //                       },
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           );
// //         },
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           Navigator.push(
// //             context,
// //             MaterialPageRoute(
// //               builder: (context) => AddQuestionPage(),
// //             ),
// //           );
// //         },
// //         tooltip: 'Add Question',
// //         child: const Icon(Icons.add_rounded),
// //       ),
// //     );
// //   }

// //   void _showAnswerDialog(BuildContext context, String correctAnswer) {
// //     showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return AlertDialog(
// //           title: Text('Correct Answer'),
// //           content: Text('The correct answer is: $correctAnswer'),
// //           actions: <Widget>[
// //             TextButton(
// //               onPressed: () {
// //                 Navigator.of(context).pop();
// //               },
// //               child: Text('Close'),
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }

// //   void _editQuestion(int index) {
// //     questionController.text = questions[index]['question'];
// //     answerController.text = questions[index]['options'][questions[index]['correctAnswerIndex']];
// //     option1Controller.text = questions[index]['options'][questions[index]['option1Index']];
// //     option2Controller.text = questions[index]['options'][questions[index]['option2Index']];
// //     option3Controller.text = questions[index]['options'][questions[index]['option3Index']];

// //     showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return SingleChildScrollView(
// //           child: AlertDialog(
// //             title: Text('Edit Question'),
// //             content: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 TextField(
// //                   controller: questionController,
// //                   decoration: InputDecoration(labelText: 'Question'),
// //                 ),
// //                 TextField(
// //                   controller: answerController,
// //                   decoration: InputDecoration(labelText: 'Correct Answer'),
// //                 ),
// //                 TextField(
// //                   controller: option1Controller,
// //                   decoration: InputDecoration(labelText: 'Option 1'),
// //                 ),
// //                 TextField(
// //                   controller: option2Controller,
// //                   decoration: InputDecoration(labelText: 'Option 2'),
// //                 ),
// //                 TextField(
// //                   controller: option3Controller,
// //                   decoration: InputDecoration(labelText: 'Option 3'),
// //                 ),
// //               ],
// //             ),
// //             actions: <Widget>[
// //               TextButton(
// //                 onPressed: () {
// //                   Navigator.of(context).pop();
// //                 },
// //                 child: Text('Cancel'),
// //               ),
// //               TextButton(
// //                 onPressed: () {
// //                   setState(() {
// //                     questions[index]['question'] = questionController.text;
// //                     questions[index]['options'][questions[index]['correctAnswerIndex']] =
// //                         answerController.text;
// //                     questions[index]['options'][questions[index]['option1Index']] =
// //                         option1Controller.text;
// //                     questions[index]['options'][questions[index]['option2Index']] =
// //                        option2Controller.text;
// //                     questions[index]['options'][questions[index]['option3Index']] =
// //                         option3Controller.text;
// //                   });
// //                   Navigator.of(context).pop();
// //                 },
// //                 child: Text('Save'),
// //               ),
// //             ],
// //           ),
// //         );
// //       },
// //     );
// //   }
// // //

// //   void _deleteQuestion(int index) {
// //     setState(() {
// //       questions.removeAt(index);
// //     });
// //   }
// // }

// import 'dart:convert';

// import 'package:agashya/quiz/screens/admin/add_quiz.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class AdminQuiz extends StatefulWidget {
//   const AdminQuiz({Key? key}) : super(key: key);

//   @override
//   _AdminQuizState createState() => _AdminQuizState();
// }

// class _AdminQuizState extends State<AdminQuiz> {
//   List<Map<String, dynamic>> questions = [];

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

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Quiz"),
//       ),
//       body: ListView.builder(
//         itemCount: questions.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ListTile(
//                   title: Text(questions[index]['question']),
//                   onTap: () {
//                     _showAnswerDialog(context, questions[index]['options'][questions[index]['correctAnswers'][0]]);
//                   },
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   child: Text(
//                     'Correct Answer: ${questions[index]['options'][questions[index]['correctAnswers'][0]]}',
//                     style: const TextStyle(fontStyle: FontStyle.italic),
//                   ),
//                 ),
//                 ButtonBar(
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.edit),
//                       onPressed: () {
//                         _editQuestion(index);
//                       },
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.delete),
//                       onPressed: () {
//                         _deleteQuestion(index);
//                       },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) =>  AddQuestionPage(),
//             ),
//           );
//         },
//         tooltip: 'Add Question',
//         child: const Icon(Icons.add_rounded),
//       ),
//     );
//   }

//   void _showAnswerDialog(BuildContext context, String correctAnswer) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Correct Answer'),
//           content: Text('The correct answer is: $correctAnswer'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Close'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _editQuestion(int index) {
//     // Implement editing a question
//   }

//   void _deleteQuestion(int index) {
//     // Implement deleting a question
//   }
// }
import 'package:agashya/quiz/screens/admin/add_quiz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AdminQuiz extends StatefulWidget {
  const AdminQuiz({Key? key}) : super(key: key);

  @override
  State<AdminQuiz> createState() => _AdminQuizState();
}

class _AdminQuizState extends State<AdminQuiz> {
  final Uri _url = Uri.parse(
      'https://mid-term-e521e-default-rtdb.firebaseio.com/questions.json');

  List<Map<String, dynamic>> questions = [];
  TextEditingController questionController = TextEditingController();
  TextEditingController answerController = TextEditingController();
  TextEditingController option1Controller = TextEditingController();
  TextEditingController option2Controller = TextEditingController();
  TextEditingController option3Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchQuestions();
  }

  Future<void> fetchQuestions() async {
    try {
      final response = await http.get(_url);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final List<Map<String, dynamic>> fetchedQuestions = [];
        data.forEach((key, value) {
          fetchedQuestions.add({
            'id': key,
            'question': value['question'],
            'options': value['options'],
            'correctAnswerIndex': value['correctAnswerIndex'] ?? 0,
            'option1Index': value['option1Index'] ?? 1,
            'option2Index': value['option2Index'] ?? 2,
            'option3Index': value['option3Index'] ?? 3,
          });
        });
        setState(() {
          questions = fetchedQuestions;
        });
      } else {
        print('Failed to fetch questions: ${response.reasonPhrase}');
      }
    } catch (error) {
      print('Error fetching questions: $error');
    }
  }

  Future<void> editQuestion(int index) async {
    Map<String, dynamic> updatedQuestion = {
      'question': questionController.text,
      'options': [
        answerController.text,
        option1Controller.text,
        option2Controller.text,
        option3Controller.text,
      ],
      'correctAnswerIndex': 0, // Change this to the correct index
    };

    try {
      final response = await http.patch(
        Uri.parse(
            'https://mid-term-e521e-default-rtdb.firebaseio.com/questions/${questions[index]['id']}.json'),
        body: json.encode(updatedQuestion),
      );

      if (response.statusCode == 200) {
        print('Question updated successfully');
        fetchQuestions(); // Reload questions after updating
      } else {
        print('Failed to update question');
      }
    } catch (error) {
      print('Error updating question: $error');
    }
  }

  Future<void> deleteQuestion(int index) async {
    try {
      final response = await http.delete(
        Uri.parse(
            'https://mid-term-e521e-default-rtdb.firebaseio.com/questions/${questions[index]['id']}.json'),
      );

      if (response.statusCode == 200) {
        print('Question deleted successfully');
        fetchQuestions(); // Reload questions after deleting
      } else {
        print('Failed to delete question');
      }
    } catch (error) {
      print('Error deleting question: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(questions[index]['question'] ?? ''),
                  onTap: () {
                    _showAnswerDialog(
                      context,
                      questions[index]['options']
                              [questions[index]['correctAnswerIndex']] ??
                          '',
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Correct Answer: ${questions[index]['options'][questions[index]['correctAnswerIndex']]}',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                ButtonBar(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        _editQuestion(index);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _deleteQuestion(index);
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddQuestionPage(),
            ),
          );
        },
        tooltip: 'Add Question',
        child: const Icon(Icons.add_rounded),
      ),
    );
  }

  void _showAnswerDialog(BuildContext context, String correctAnswer) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Correct Answer'),
          content: Text('The correct answer is: $correctAnswer'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _editQuestion(int index) {
    questionController.text = questions[index]['question'];
    answerController.text = questions[index]['correctAnswerIndex'];
    option1Controller.text = questions[index]['options'][0];
    option2Controller.text = questions[index]['options'][1];
    option3Controller.text = questions[index]['options'][2];
    // Update the controller for more options if needed

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: AlertDialog(
            title: Text('Edit Question'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: questionController,
                  decoration: InputDecoration(labelText: 'Question'),
                ),
                TextField(
                  controller: answerController,
                  decoration: InputDecoration(labelText: 'Correct answer'),
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
                // Add more text fields for additional options if needed
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  editQuestion(index);
                  Navigator.of(context).pop();
                },
                child: Text('Save'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _deleteQuestion(int index) {}
}
