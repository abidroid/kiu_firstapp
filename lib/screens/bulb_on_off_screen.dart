import 'package:flutter/material.dart';

class BulbOnOffScreen extends StatefulWidget {
  const BulbOnOffScreen({super.key});

  @override
  State<BulbOnOffScreen> createState() => _BulbOnOffScreenState();
}

class _BulbOnOffScreenState extends State<BulbOnOffScreen> {
  bool switchStatus = false;
  String title = 'Off';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bulb $title"),
      ),
      body: Column(
        children: [
          Icon(
            Icons.lightbulb,
            size: 200,
            color: switchStatus ? Colors.amber : Colors.black,
          ),
          Switch(
              value: switchStatus,
              onChanged: (bool isChecked) {
                setState(() {
                  switchStatus = isChecked;

                  title = switchStatus ? " On" : " Off";

                });
              })
        ],
      ),
    );
  }
}
