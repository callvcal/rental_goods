import 'package:flutter/material.dart';

class Button2 extends StatefulWidget {
  const Button2({super.key,required this.text,required this.onPressed,required this.color});
  final String text;
  final VoidCallback onPressed;
  final Color color;

  @override
  State<Button2> createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          backgroundColor: widget.color,
        ),
        onPressed: widget.onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 4),
          child: Text(
            widget.text,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20
            ),
          ),
        )
    );
  }
}
