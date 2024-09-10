import 'package:flutter/material.dart';

class GridviewDemoScreen extends StatelessWidget {
  const GridviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView Demo',
        ),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 150,
        ),
        children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.amber),
          Container(color: Colors.cyan),
          Container(color: Colors.orange),
          Container(color: Colors.purple),
          Container(color: Colors.grey),
          Container(color: Colors.pink),
          Container(color: Colors.green),
          Container(color: Colors.teal),
          Container(color: Colors.brown),
          Container(color: Colors.red),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.amber),
          Container(color: Colors.cyan),
          Container(color: Colors.orange),
          Container(color: Colors.purple),
          Container(color: Colors.grey),
          Container(color: Colors.pink),
          Container(color: Colors.green),
          Container(color: Colors.teal),
          Container(color: Colors.brown),
          Container(color: Colors.red),
        ],
      ),
    );
  }
}
