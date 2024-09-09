import 'package:flutter/material.dart';

class ListviewDemoScreen extends StatelessWidget {
  const ListviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> teams = [
      'Afghanistan',
      'Bangladesh',
      'Canada',
      'England',
      'India',
      'Netherland',
      'Oman',
      'Pakitan',
      'UAE',
      'South Africa',
      'Australia',
      'Zimbabwe',
      'NZ',
      'USA',
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Teams'),
        ),
        body: ListView.builder(
            itemCount: teams.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.green,),
                  title:
                Text(
                  teams[index],
                  style: TextStyle(fontSize: 30),
                ),),
              );
            }));
  }
}
