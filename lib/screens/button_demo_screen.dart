import 'package:flutter/material.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Button Demo'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            //height: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white),
              onPressed: () {},
              child: Text('Submit Your Form'),
            ),
          ),
          GestureDetector(
              onTap: () {
                print('Text Clicked');
              },
              child: Text('Login')),
          TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              onPressed: () {},
              child: Text('Not Registered Yet? Sign Up Now')),
          OutlinedButton(onPressed: () {}, child: Text('Rate My App')),
          GestureDetector(
            onTap: (){
              print('Custom Button Clicked');
            },
            child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Colors.purple,
                      Colors.pink,
                    ])),
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                )),
          ),

          SizedBox(height: 20,),

          GestureDetector(
            onTap: (){
              print('Custom Button Clicked');
            },
            child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Colors.purple,
                      Colors.pink,
                    ])),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
