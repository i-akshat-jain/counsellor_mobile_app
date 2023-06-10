import 'package:flutter/material.dart';

class SlideBox extends StatefulWidget {
  final Color boxColor;
  final String title; 


  SlideBox({
    required this.boxColor,
    required this.title,

  });

  @override
  _SlideBoxState createState() => _SlideBoxState();
}

class _SlideBoxState extends State<SlideBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: widget.boxColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                widget.title,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: isExpanded ? MediaQuery.of(context).size.height * 0.24 : 0,
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [

                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
