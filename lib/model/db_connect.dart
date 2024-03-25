import 'package:http/http.dart' as http;
import 'dart:convert';

class DBconnect {
  final Uri _url = Uri.parse('https://mid-term-e521e-default-rtdb.firebaseio.com/user.json');

  Future<void> addUser(String name, String email, String password, String role) async {
    try {
      final response = await http.post(
        _url,
        body: json.encode({
          'username': name,
          'email': email,
          'password': password,
          'role': role,
        }),
      );

      if (response.statusCode == 200) {
        print('User added successfully');
      } else {
        print('Failed to add user');
      }
    } catch (error) {
      print('Error adding user: $error');
    }
  }

  Future<String?> getUserEmail(String userId) async {
    try {
      final response = await http.get(_url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        // Check if the user with the given userId exists in the database
        if (data.containsKey(userId)) {
          return data[userId]['email'];
        } else {
          print('User with ID $userId not found');
          return null;
        }
      } else {
        print('Failed to retrieve user data');
        return null;
      }
    } catch (error) {
      print('Error retrieving user email: $error');
      return null;
    }
  }
  
  
}