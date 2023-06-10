import 'package:flutter/material.dart';

class NextPageButton extends StatelessWidget {
  final Widget nextPage;
  final String text;

  NextPageButton({
    required this.nextPage,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage),
        );
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
