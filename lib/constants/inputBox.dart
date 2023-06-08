import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final String title;
  final String hintText;
  
  const InputBox({ required this.title, this.hintText = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade500,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: TextField(
              decoration: InputDecoration(
                 hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}