import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color; // Menentukan tipe data Color untuk variabel color
  final textColor; // Menentukan tipe data Color untuk variabel textColor
  final  buttonText;
  final buttonTap;

  MyButton({this.color, this.textColor, this.buttonText, this.buttonTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(color: textColor, fontSize:18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
