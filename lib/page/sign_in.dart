// // import 'package:flutter/material.dart';

// // class LoginPage extends StatefulWidget {
// //   const LoginPage({super.key});
// //   _LoginPageState createState() => _LoginPageState();
// // }

// // class _LoginPageState extends State<LoginPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Column(

// //         children: [
// //           const SizedBox(
// //             height: 25,
// //           ),
// //           ClipOval(
// //             child: Image.asset('images/image2.png'),
// //           ),
// //           const SizedBox(
// //             height: 10,
// //           ),
// //         const  Text('Welcome to Agashya.',
// //               style: TextStyle(
// //                 fontSize: 30,
// //               ),
// //               textAlign: TextAlign.left),
// //          const Text('Please login your account to continue'),
// //          const SizedBox(
// //             height: 40,
// //           ),
// //           ElevatedButton.icon(
// //             style: ElevatedButton.styleFrom(
// //               backgroundColor: Colors.blue,
// //               foregroundColor: Colors.white,
// //               minimumSize: Size(double.infinity, 50),
// //             ),
// //             onPressed: () {},
// //             icon: Icon(Icons.mail),
// //             label: Text('Sign Up with Email'),
// //           ),
// //           const SizedBox(
// //             height: 20,
// //           ),
// //           ElevatedButton.icon(
// //             style: ElevatedButton.styleFrom(
// //               backgroundColor: Colors.black,
// //               foregroundColor: Colors.white,
// //               minimumSize: Size(double.infinity, 50),
// //             ),
// //             onPressed: () {},
// //             icon: Icon(Icons.g_mobiledata_outlined, color: Colors.red),
// //             label: Text('Sign Up with Email'),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool _isLogin = true; // Variable to track whether it's login or signup
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: 25),
//             ClipOval(
//               child: Image.asset('images/image2.png'),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Welcome to Agashya.',
//               style: TextStyle(
//                 fontSize: 30,
//               ),
//               textAlign: TextAlign.left,
//             ),
//             Text('Please login to continue'),
//             SizedBox(height: 40),
//             if (!_isLogin) ...[
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Name',
//                   hintText: 'Enter your name',
//                 ),
//               ),
//             ],
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 hintText: 'Enter your email',
//               ),
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 hintText: 'Enter your password',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 foregroundColor: Colors.white,
//                 minimumSize: Size(double.infinity, 50),
//               ),
//               onPressed: () {
//                 // Perform login or signup action
//               },
//               icon: Icon(Icons.mail),
//               label: Text(_isLogin ? 'Login with Email' : 'Sign Up with Email'),
//             ),
//             SizedBox(height: 20),
//             TextButton(
//               onPressed: () {
//                 setState(() {
//                   _isLogin = !_isLogin; // Toggle between login and signup
//                 });
//               },
//               child: Text(_isLogin
//                   ? 'Don\'t have an account? Sign Up'
//                   : 'Already have an account? Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:agashya/model/db_connect.dart';
import 'package:agashya/page/login.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _selectedRole = 'user';

  final DBconnect _dbConnect = DBconnect();

  void _signup(BuildContext context) {
    String name = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String role = _selectedRole;

    // Call the addUser method to save user data to Firebase
    _dbConnect.addUser(name, email, password, role);

    // Navigate to the home screen or perform any other action after successful signup
    Navigator.pushReplacementNamed(context, '/login');

    // Validate input fields
    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      // Show error message if any field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill all fields'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Proceed with signup
    // You can replace this logic with your actual signup process
    // For now, let's just print the user details
    print(
        'Username: $name, Email: $email, Password: $password, Role: $_selectedRole');

    // Navigate to the home screen after successful signup
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20.0),
              DropdownButton<String>(
                value: _selectedRole,
                items: [
                  DropdownMenuItem(
                    child: Text('Admin'),
                    value: 'admin',
                  ),
                  DropdownMenuItem(
                    child: Text('User'),
                    value: 'user',
                  ),
                ],
                onChanged: (value) {
                  // Update the selected role when the dropdown value changes
                  _selectedRole = value!;
                },
                hint: Text('Select Role'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () => _signup(context),
                child: Text('Signup'),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  onPressed:
                  () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  };
                },
                child: Text('Already have an account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
