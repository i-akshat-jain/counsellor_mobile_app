import 'package:chatapp/audiocall.dart';
import 'package:chatapp/premium.dart';
import 'package:chatapp/videocall.dart';
import 'package:flutter/material.dart';

import 'feedbackForm.dart';
import 'messageScreen.dart';
import 'mostliked.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: PremiumMembershipPage(),
      // home: MessengerScreen(),
      // home: MostLikedPage() 
        // home: VideoCallPage()
         home: AudioCallPage()
        // home: FeedbackScreen()
    );
  }
}
