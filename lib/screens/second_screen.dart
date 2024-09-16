import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  final String ayk;

  // constructor
  const SecondScreen({super.key, required this.ayk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen $ayk'),
      ),
    );
  }
}
