import 'package:agashya/page/app%20copy.dart';
import 'package:agashya/page/app.dart';
import 'package:agashya/page/sign_in.dart';
import 'package:agashya/quiz/screens/admin/dashboard.dart';
import 'package:agashya/quiz/screens/user%20screens/user_interface.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<bool> _login(BuildContext context) async {
    final email = _emailController.text;
    final password = _passwordController.text;

    final Uri url = Uri.parse(
        'https://mid-term-e521e-default-rtdb.firebaseio.com/user.json');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final Map<String, dynamic>? users = json.decode(response.body);
        if (users != null) {
          // Iterate through users to check if the provided email and password match
          for (var user in users.values) {
            if (user['email'] == email && user['password'] == password) {
              // Store user information for display on the dashboard
              final userInfo = {
                'name': user['name'],
                'email': user['email'],
                'role': user['role'],
              };
              // Navigate to the appropriate dashboard based on the user's role
              if (userInfo['role'] == 'admin') {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AppDisplay(userInfo: userInfo)));
              } else {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AppDisplayUser(userInfo: userInfo)));
              }
              return true;
            }
          }
        }
      }
    } catch (error) {
      print('Error during login: $error');
    }
    // User not found or error occurred, return false
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _login(context),
              child: Text('Login'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignupScreen()));
               
                },
                child: const Text("Don't have an account, Signup"))
          ],
        ),
      ),
    );
  }
}
