import 'package:agashya/page/app.dart';
import 'package:agashya/share_preference/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider()..initialize(),
      child: const MyApp(),
      
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, provider, child) {
      return MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: provider.themeMode,
        debugShowCheckedModeBanner: false,
        home: const RootPage(),
      );
    });
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return AppDisplay();
  }
}
