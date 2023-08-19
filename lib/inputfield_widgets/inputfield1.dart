import 'package:flutter/material.dart';

class InputField1 extends StatefulWidget {
  const InputField1({super.key,required this.controller,required this.fieldName});
  final TextEditingController controller;
  final String fieldName;

  @override
  State<InputField1> createState() => _InputField1State();
}

class _InputField1State extends State<InputField1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.fieldName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  color: Colors.black,
                  width: 1
              )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 4),
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: const TextStyle(
                  fontSize: 20
              ),
              controller: widget.controller,
              cursorColor: Colors.black,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                  border: InputBorder.none
              ),
            ),
          ),
        ),
      ],
    );
  }
}
