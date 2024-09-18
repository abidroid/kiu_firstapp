import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // initial value
  int count = 0;

  @override
  void initState() {
    readCountValueOnAppStart();
    super.initState();
  }

  incrementCounter() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    count++;
    setState(() {});

    prefs.setInt('counter', count);
  }

  readCountValueOnAppStart() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Try reading data from the 'counter' key. If it doesn't exist, returns null.
    final int? counter = prefs.getInt('counter');

    if( counter == null ){
      count = 50;
    }else{
      count = counter;
    }

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$count', // string interpolation
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            ElevatedButton(
              onPressed: incrementCounter,
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
