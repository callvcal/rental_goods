import 'package:flutter/material.dart';
import 'package:group_task/constant.dart';

class Button1 extends StatefulWidget {
  const Button1({super.key,required this.onPressed,required this.text});
  final String text;
  final VoidCallback onPressed;

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)
          ),
          backgroundColor: appBarButtonColor,
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 20
          ),
        )
    );
  }
}
