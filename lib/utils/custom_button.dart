import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JustAButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const JustAButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
        ),
      child: Text(text, style: TextStyle(fontSize: 16),),
    );
  }
}
