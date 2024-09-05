
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String label;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
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
            label,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
