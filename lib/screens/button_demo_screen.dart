import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kiu_firstapp/widgets/custom_button.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Button Demo'),
      ),
      body: ListView(
        children: <Widget>[

          GestureDetector(
            onTap: (){
            },
            child: Card(
              color: Colors.amber,
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blue,),
                title: Text('Virat kohli'),
                subtitle: Text('Batsman'),
                trailing: Text('India'),
                onTap: (){
                  Fluttertoast.showToast(msg: 'I am Kohli');
                },
              ),
            ),
          ),

          Card(
            color: Colors.pink,
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blue,),
              title: Text('Babar Azam'),
              subtitle: Text('Batsman'),
              trailing: Text('Pak'),
              onTap: (){
                Fluttertoast.showToast(msg: 'I am Babar');
              },
            ),
          ),

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
          CustomButton(
            label: 'LOGIN',
            onPressed: () {
              print('LOGIN Pressed');
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            label: 'SIGN UP',
            onPressed: () {},
          ),
          SizedBox(height: 20),
          CustomButton(
            label: 'Rate App',
            onPressed: () {
              Fluttertoast.showToast(msg: 'I am a toast message');
            },
          ),
          Container(
            width: 200,
            height: 700,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
