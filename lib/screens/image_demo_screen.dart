import 'package:flutter/material.dart';

class ImageDemoScreen extends StatelessWidget {
  const ImageDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Image Demo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR254IQiUFCnMB-qRWJ1239aCgxj_f-QfdHsQ&s'))),
            ),
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.amber,
              backgroundImage: AssetImage('pictures/abid.png'),
              child: Text('Abid'),
            ),
            Image(
              width: double.infinity,
              height: 300,
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR254IQiUFCnMB-qRWJ1239aCgxj_f-QfdHsQ&s'),
            ),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR254IQiUFCnMB-qRWJ1239aCgxj_f-QfdHsQ&s'),
            Image(image: AssetImage('pictures/abid.png')),
          ],
        ),
      ),
    );
  }
}
