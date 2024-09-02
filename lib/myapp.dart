import 'package:app_bancario/home_controller.dart';
import 'package:flutter/material.dart';
import './home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(child: HomePage()),
    );
  }
}
