import '../constants/inputBox.dart';
import '../constants/nextPage.dart';
import 'package:flutter/material.dart';
import 'package:counsellor_mobile_app/view/personalRegisterView.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40.0),
            InputBox(
                title: "Email Id/ Phone No",
                hintText: "Enter your Email Id/ Phone No"),
            SizedBox(height: 16.0),
            InputBox(
              title: "Password",
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Handle login button press
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.centerLeft,
              child: NextPageButton(
                nextPage: PersonalRegistrationViewPage(),
                text: 'Already Registered?',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
