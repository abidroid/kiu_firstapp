import 'package:flutter/material.dart';

class StackDemoScreen extends StatelessWidget {
  const StackDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar myAppBar = AppBar(
      backgroundColor: Colors.purple,
      title: const Text(
        'Demo',
        style: TextStyle(color: Colors.white),
      ),
    );

    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Positioned(
              left: 125,
              bottom: -25,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
