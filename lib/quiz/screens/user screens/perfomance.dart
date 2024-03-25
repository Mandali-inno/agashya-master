import 'package:flutter/material.dart';

class UserPerfomance extends StatefulWidget {
  const UserPerfomance({super.key});

  @override
  State<UserPerfomance> createState() => _UserPerfomanceState();
}

class _UserPerfomanceState extends State<UserPerfomance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfomance'),
      ),
    );
  }
}