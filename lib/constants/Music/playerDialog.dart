import 'package:flutter/material.dart';

void showPlayerDialog(BuildContext context, String songName) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                songName,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Play previous song
                    },
                    icon: Icon(Icons.skip_previous),
                  ),
                  IconButton(
                    onPressed: () {
                      // Toggle play/pause
                    },
                    icon: Icon(Icons.play_arrow),
                  ),
                  IconButton(
                    onPressed: () {
                      // Play next song
                    },
                    icon: Icon(Icons.skip_next),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
