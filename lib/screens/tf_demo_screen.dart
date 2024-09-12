import 'package:flutter/material.dart';

class TfDemoScreen extends StatefulWidget {
  const TfDemoScreen({super.key});

  @override
  State<TfDemoScreen> createState() => _TfDemoScreenState();
}

class _TfDemoScreenState extends State<TfDemoScreen> {

  // private
  bool _obscureText = true;

  TextEditingController feedbackController = TextEditingController();

  @override
  void initState() {
    feedbackController.text = 'this is a sample feedback';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("TextField Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: 'Email Here',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: _obscureText,
              obscuringCharacter: '#',
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password here',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {

                  setState(() {

                    _obscureText = !_obscureText;

                  });

                  },
                  icon: Icon(
                   _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 11,

              decoration: InputDecoration(
                hintText: 'Mobile',
                labelText: 'Mobile Num',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            TextField(
              controller: feedbackController,
              maxLines: 8,
              decoration: InputDecoration(
                hintText: 'Feedaback Regarding Flutter class',
                hintStyle: TextStyle(color: Colors.grey),
                labelText: 'Feedback',
                border: OutlineInputBorder(),
              ),
            ),
            
            ElevatedButton(onPressed: (){

              String feedback = feedbackController.text.trim();

              if( feedback.isEmpty){
                print('No text found');
              }else{
                print(feedback);
              }


            }, child: const Text('Read Text'))
          ],
        ),
      ),
    );
  }
}
