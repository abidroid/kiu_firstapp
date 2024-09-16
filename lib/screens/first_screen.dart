import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kiu_firstapp/screens/second_screen.dart';
import 'package:kiu_firstapp/screens/third_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // type inference
  var nameCon = TextEditingController();

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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            TextField(
              controller: nameCon,
              decoration: InputDecoration(
                hintText: 'Name',
              ),
            ),

            ElevatedButton(
              onPressed: () {

                String name = nameCon.text.trim();

                if( name.isEmpty){
                  Fluttertoast.showToast(msg: 'Please provide name');
                }else{

                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return SecondScreen(ayk: name);
                  }));
                }



              },
              child: const Text('Go to 2nd Screen'),
            ),
            ElevatedButton(
              onPressed: () {

                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return  ThirdScreen(noam: nameCon.text.trim(),);
                }));
              },
              child: const Text('Go to 3rd Screen'),
            ),
          ],
        ),
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
