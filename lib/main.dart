import 'package:flutter/material.dart';
import 'package:flutter_login_page/pages/auth_page.dart';
import 'package:flutter_login_page/resources/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: AppThemes.lightTheme,
      home: const AuthPage(),
    );
  }
}
