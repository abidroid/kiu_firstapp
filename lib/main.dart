import 'package:flutter/material.dart';
import 'package:kiu_firstapp/screens/bulb_on_off_screen.dart';
import 'package:kiu_firstapp/screens/coutner_screen.dart';
import 'package:kiu_firstapp/screens/gridview_demo_screen.dart';
import 'package:kiu_firstapp/screens/gridview_dynamic_screen.dart';

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
      home: const BulbOnOffScreen(),
    );
  }
}

