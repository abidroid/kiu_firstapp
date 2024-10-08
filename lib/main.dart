import 'package:flutter/material.dart';
import 'package:kiu_firstapp/screens/counter_screen.dart';
import 'package:kiu_firstapp/screens/doctors_list_screen.dart';
import 'package:kiu_firstapp/screens/first_screen.dart';
import 'package:kiu_firstapp/screens/simple_calculator.dart';
import 'package:kiu_firstapp/screens/tf_demo_screen.dart';

// entry point
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterScreen(),
    );
  }
}

