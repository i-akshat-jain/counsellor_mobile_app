import '../constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:counsellor_mobile_app/view/loginPage.dart';

class EmotionSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: 167.02,
              height: 61.71,
              child: SvgPicture.asset('assets/images/sweetSoundLogo.svg'),
            ),
            SizedBox(height: 32.0),
            const Text('Stay Emotionally Ensured',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ), 
            SizedBox(height: 16.0),
            const Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: [
                EmotionChip(label: 'Happiness'),
                EmotionChip(label: 'Passion'),
                EmotionChip(label: 'Balance'),
                EmotionChip(label: 'Self-awareness'),
                EmotionChip(label: 'Productivity'),
              ],
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );

                // Handle button press
              },
               style: ElevatedButton.styleFrom(
                primary: AppColors.blue,
              ),
              child: Text('Get Started', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

class EmotionChip extends StatefulWidget {
  final String label;

  const EmotionChip({required this.label});

  @override
  _EmotionChipState createState() => _EmotionChipState();
}

class _EmotionChipState extends State<EmotionChip> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Chip(
        label: Text(widget.label),
        backgroundColor: isSelected ? AppColors.pink : AppColors.lightPink,
        labelStyle: TextStyle(
          color: isSelected ? Colors.black : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

