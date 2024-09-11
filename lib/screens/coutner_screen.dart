import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  // state variable
  // initial State
  String message = 'KIU Zindabad';
  int count = 10;
  Color bgColor = Colors.black;

  TextStyle txtStyle = TextStyle(color: Colors.white, fontSize: 40);

  @override
  Widget build(BuildContext context) {

    print('**** build executed ****');
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Dynamic Screen"),
      ),
      body: Center(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            ElevatedButton(onPressed: (){
              setState(() {
                bgColor = Colors.red;
              });
            }, child: Text("Red")),
            ElevatedButton(onPressed: (){
              setState(() {
                bgColor = Colors.green;
              });
            }, child: Text("Green")),
            ElevatedButton(onPressed: (){
              setState(() {
                bgColor = Colors.blue;
              });
            }, child: Text("Blue")),

            Text(
              message, // hard coded text
              style: txtStyle,
            ),

            ElevatedButton(onPressed: (){
              message = 'Flutter Zindabad';

              setState(() {

              });
            }, child:  const Text('Click Me')),

            SizedBox(height: 20,),
            Text(
              '$count', // hard coded text
              style: txtStyle,
            ),
            ElevatedButton(onPressed: (){

              setState(() {
                count++;

              });
            }, child:  const Text('Increase')),

          ],
        ),
      ),
    );
  }
}
