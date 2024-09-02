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
      body: Container(
        margin: const EdgeInsets.only(left: 50, top: 50),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: [
            Colors.red,
            Colors.yellow,
          ]),
          // gradient: LinearGradient(colors: [
          //   Colors.green,
          //   Colors.pink,
          //   Colors.purple
          // ],
          // begin: Alignment.topLeft,
          //   end: Alignment.bottomCenter,
          // ),
        ),
        child: Center(
          child: Text(
            'KIU',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
