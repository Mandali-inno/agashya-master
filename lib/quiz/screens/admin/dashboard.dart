import 'package:agashya/quiz/screens/admin/quiz.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
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
                  MaterialPageRoute(builder: (context) => AdminQuiz()),
                );
              },
              child: Text('Manage Quiz'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to manage users page
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ManageUsersPage()),
                // );
              },
              child: Text('Manage Users'),
            ),
          ],
        ),
      ),
    );
  }
}



