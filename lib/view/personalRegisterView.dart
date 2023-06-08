import 'dart:io';
import '../constants/inputBox.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../constants/radioOptions.dart';
import 'package:image_picker/image_picker.dart';


class PersonalRegistrationViewPage extends StatefulWidget {
  @override
  _PersonalRegistrationViewPage createState() =>
      _PersonalRegistrationViewPage();
}

class _PersonalRegistrationViewPage
    extends State<PersonalRegistrationViewPage> {
  XFile? _imageFile;
  late String? selectedGender;
  TextEditingController _textEditingController = TextEditingController();
  int _wordCount = 0;

  void _updateWordCount(String text) {
    setState(() {
      // Split the text into words using whitespace as delimiter
      List<String> words = text.trim().split(' ');

      // Update the word count
      _wordCount = words.length;
    });
  }

  Future<void> _getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _imageFile = pickedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset('assets/images/personal.svg'),
            ),
            SizedBox(height: 8.0),
            Text(
              'Upload Picture',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: _getImageFromGallery,
              child: Container(
                width: 72.0,
                height: 61.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: _imageFile != null
                    ? ClipOval(
                        child: Image.file(
                          File(_imageFile!.path),
                          fit: BoxFit.cover,
                        ),
                      )
                    : Icon(
                        Icons.camera_alt,
                        size: 48.0,
                      ),
              ),
            ),
            SizedBox(height: 16.0),
            // Add your upload picture widget here
            InputBox(title: "Name", hintText: "Enter your name"),
            SizedBox(height: 16.0),
            Text(
              'About You (20 words limit)',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
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
                controller: _textEditingController,
                onChanged: _updateWordCount,
                maxLength: 200, // Set the maximum character limit
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Enter a brief description',
                  counterText: 'Word Count: $_wordCount/20',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            InputBox(title: "Age", hintText: "Enter your age"),
            SizedBox(height: 16.0),
            InputBox(
                title: "Alternate Number",
                hintText: "Enter your alternate number"),
            SizedBox(height: 16.0),
            InputBox(title: "Profession", hintText: "Enter your profession"),
            SizedBox(height: 16.0),
            Text(
              'Zipcode',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropdownButtonFormField<String>(
              items: [
                DropdownMenuItem(
                  value: 'zip1',
                  child: Text('Zip 1'),
                ),
                DropdownMenuItem(
                  value: 'zip2',
                  child: Text('Zip 2'),
                ),
                DropdownMenuItem(
                  value: 'zip3',
                  child: Text('Zip 3'),
                ),
                // Add more zip options here
              ],
              onChanged: (value) {
                // Handle zip selection
              },
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            // Add your zipcode selection widget here
            SizedBox(height: 16.0),
            InputBox(title: "Address", hintText: "Enter your address"),
            SizedBox(height: 16.0),
            RadioOptions(
              title: "Please select your identity",
              valueRadio1: "male",
              radio1: "Male",
              valueRadio2: "female",
              radio2: "Female",
            ),
            SizedBox(height: 16.0),
            RadioOptions(
              title: "Please Select Marital Status",
              valueRadio1: "married",
              radio1: "Married",
              valueRadio2: "single",
              radio2: "Single",
            ),
            SizedBox(height: 16.0),
            RadioOptions(
              title: "Preferred Language",
              valueRadio1: "en",
              radio1: "English",
              valueRadio2: "hi",
              radio2: "Hindi",
            ),
            SizedBox(height: 16.0),
            FractionallySizedBox(
              widthFactor: 1.0,
              child: ElevatedButton(
                onPressed: () {
                  // Handle registration button press
                },
                child: Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
