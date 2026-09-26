import 'router.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'GoogleSans',
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
      ),
    
      darkTheme: ThemeData(
        useMaterial3: true,
        fontFamily: 'GoogleSans',
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
      ),

      themeMode: _themeMode,
      routerConfig: navigationRoute,
    );
  }
}