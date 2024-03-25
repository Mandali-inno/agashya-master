import 'package:agashya/quiz/screens/user%20screens/perfomance.dart';
import 'package:agashya/quiz/screens/user%20screens/take_quiz.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to manage quiz page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TakeQuiz()),
                );
              },
              child: Text('Take Quiz'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to manage users page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserPerfomance()),
                );
              },
              child: Text('Perfomance'),
            ),
          ],
        ),
      ),
    );
  }
}

