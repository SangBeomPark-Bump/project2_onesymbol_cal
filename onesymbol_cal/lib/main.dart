import 'package:flutter/material.dart';
import 'package:onesymbol_cal/view/addition.dart';
import 'package:onesymbol_cal/view/division.dart';
import 'package:onesymbol_cal/view/home.dart';
import 'package:onesymbol_cal/view/multiplication.dart';
import 'package:onesymbol_cal/view/subtraction.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/' : (context) => const Home(),
        '/add' : (context) => const AddPage(),
        '/sub' : (context) => const SubPage(),
        '/mul' : (context) => const MulPage(),
        '/div' : (context) => const DivPage(),
      },
      initialRoute: '/',

    );
  }
}
