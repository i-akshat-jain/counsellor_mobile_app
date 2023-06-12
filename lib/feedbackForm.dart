import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
  body: SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Feedback',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(181, 53, 134, 1),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Your Experience with the App',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
              Text(
                'Choose from the options below:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 6),
              FeedbackOption(
                text: 'Login Trouble',
              ),
               SizedBox(height: 6),
              FeedbackOption(
                text: 'Issue with Call Quality',
              ),
               SizedBox(height: 6),
              FeedbackOption(
                text: 'Personal Info Related',
              ),
               SizedBox(height: 6),
              FeedbackOption(
                text: 'Plan Rates is High',
              ),
               SizedBox(height: 6),
              FeedbackOption(
                text: 'Plan Rates is Low',
              ),
               SizedBox(height: 6),
              FeedbackOption(
                text: 'Signup Trouble',
              ),
               SizedBox(height: 6),
              FeedbackOption(
                text: 'Other Issues',
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Write your review',
                  border: OutlineInputBorder(),
                ),
                minLines: 3,
                maxLines: 5,
              ),
              SizedBox(height: 16),
              Text(
                'Your Experience with your Therapist',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text('Rate the following:'),
              SizedBox(height: 8),
             RatingOption(
  title: 'Behavior',
),
RatingOption(
  title: 'Gesture',
),
RatingOption(
  title: 'Voice Tone',
),
RatingOption(
  title: 'Understanding Level',
),

              SizedBox(height: 16),
              Container(
               height: 40,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(24),
              ),
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.send, color: Colors.black),
                  SizedBox(width: 16),
                  Text(
                    'Submit',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedbackOption extends StatefulWidget {
  final String text;

  const FeedbackOption({required this.text});

  @override
  _FeedbackOptionState createState() => _FeedbackOptionState();
}

class _FeedbackOptionState extends State<FeedbackOption> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isChecked ? Colors.lightBlue : Colors.transparent,
              border: Border.all(
                color: isChecked ? Colors.lightBlue : Colors.grey,
                width: 1.5,
              ),
            ),
            child: isChecked
                ? Icon(Icons.check, color: Colors.white, size: 12)
                : null,
          ),
        ),
        SizedBox(width: 8),
        Text(widget.text),
      ],
    );
  }
}
class RatingOption extends StatefulWidget {
  final String title;

  const RatingOption({Key? key, required this.title}) : super(key: key);

  @override
  _RatingOptionState createState() => _RatingOptionState();
}

class _RatingOptionState extends State<RatingOption> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: List.generate(5, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  rating = index + 1;
                });
              },
              child: Icon(
                Icons.star,
                color: index < rating ? Colors.lightBlueAccent : Colors.grey,
                size: 30,
              ),
            );
          }),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
