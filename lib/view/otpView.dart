import 'package:flutter/material.dart';

class OTPViewPage extends StatelessWidget {
  final String name = "John Doe"; // Replace with the user's name
  final String phoneNumber =
      "9864752134"; // Replace with the user's phone number

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.0),
            Text(
              'Hi, $name',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Enter OTP',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'OTP sent to $phoneNumber',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildNumberedBox(),
                buildNumberedBox(),
                buildNumberedBox(),
                buildNumberedBox(),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive OTP code?",
                  style: TextStyle(fontSize: 14.0),
                ),
                TextButton(
                  onPressed: () {
                    // Handle resend OTP
                  },
                  child: Text(
                    "Resend OTP",
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle verify OTP button press
              },
              child: Text('Verify OTP'),
            ),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  // Handle trouble in login button press
                },
                child: Text(
                  "Trouble in login?",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNumberedBox() {
    return Container(
      width: 64.0,
      height: 64.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

