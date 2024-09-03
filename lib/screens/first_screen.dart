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
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(width: 100, height: 100, color: Colors.white, margin: const EdgeInsets.only(left: 10),),
                    Container(width: 100, height: 100, color: Colors.white, margin: const EdgeInsets.only(left: 10),),
                    Container(width: 100, height: 100, color: Colors.white, margin: const EdgeInsets.only(left: 10),),
                    Container(width: 100, height: 100, color: Colors.white, margin: const EdgeInsets.only(left: 10),),
                    Container(width: 100, height: 100, color: Colors.white, margin: const EdgeInsets.only(left: 10),),
                    Container(width: 100, height: 100, color: Colors.white, margin: const EdgeInsets.only(left: 10),),
                    Container(width: 100, height: 100, color: Colors.white, margin: const EdgeInsets.only(left: 10),),
                  ],
                ),
              ),
            ),
          ),
          Expanded(flex: 2, child: Container(height: 100, color: Colors.green)),
          Expanded(flex: 3, child: Container(height: 100, color: Colors.blue)),
        ],
      ),
    );
  }
}

/*
Container(
        margin: const EdgeInsets.only(left: 50, top: 50),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: [
            Colors.red,
            Colors.yellow,
          ]),

        ),
        child: Center(
          child: Text(
            'KIU',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
 */
