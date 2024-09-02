import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'KIU Project',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.settings),
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
              fontSize: 40,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              wordSpacing: 10),
        ),
      ),
    );
  }
}
