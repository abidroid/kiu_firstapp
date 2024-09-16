import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {

  var firstCon = TextEditingController();
  var secondCon = TextEditingController();

  int r = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: firstCon,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Number One',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: secondCon,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Number Two',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {

                  String first = firstCon.text.trim();
                  String second = secondCon.text.trim();

                  int f = int.parse(first);
                  int s = int.parse(second);

                  int result = f + s;

                  setState(() {
                    r = result;
                  });


                }, child: Text('Add')),
                ElevatedButton(onPressed: () {}, child: Text('Sub')),
                ElevatedButton(onPressed: () {}, child: Text('Mul')),
              ],
            ),

            Text('Result $r', style: TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}

















