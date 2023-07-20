import 'package:flutter/material.dart';
import 'package:flutter_test_app/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestScreen(),
    );
  }

  Widget test1() {
    return Container();
  }

  Widget test2() {
    return Container();
  }

  Widget test3() {
    return Container();
  }

  Widget test4() {
    return Container();
  }
}
