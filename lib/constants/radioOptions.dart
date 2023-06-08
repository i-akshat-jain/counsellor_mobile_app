import 'package:flutter/material.dart';

class RadioOptions extends StatelessWidget {
  final String title;
  final String radio1;
  final String valueRadio1;
  final String radio2;
  final String valueRadio2;
  final String radio3;
  final String valueRadio3;
  final void Function(String?)? onChanged;

  const RadioOptions({
    required this.title,
    this.radio1 = '',
    this.valueRadio1 = '',
    this.radio2 = '',
    this.valueRadio2 = '',
    this.radio3 = 'ND',
    this.valueRadio3 = 'Not Disclosed',
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Radio<String>(
                    value: valueRadio1,
                    groupValue: null,
                    onChanged: onChanged,
                  ),
                  Text(radio1),
                ],
              ),
              SizedBox(width: 9.5),
              Row(
                children: [
                  Radio<String>(
                    value: valueRadio2,
                    groupValue: null,
                    onChanged: onChanged,
                  ),
                  Text(radio2),
                ],
              ),
              SizedBox(width: 9.5),
              Row(
                children: [
                  Radio<String>(
                    value: valueRadio3,
                    groupValue: null,
                    onChanged: onChanged,
                  ),
                  Text(radio3),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
