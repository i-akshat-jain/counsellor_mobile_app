import '../constants/inputBox.dart';
import 'package:flutter/material.dart';
import 'package:counsellor_mobile_app/constants/radioOptions.dart';


class PersonalRegistrationViewPage extends StatefulWidget {
  @override
  _PersonalRegistrationViewPage createState() =>
      _PersonalRegistrationViewPage();
}

class _PersonalRegistrationViewPage
    extends State<PersonalRegistrationViewPage> {
  late String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upload Picture',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
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
            TextField(
              maxLines: 2,
              maxLength: 20,
              decoration: InputDecoration(
                hintText: 'Enter a brief description',
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

            Text(
              'Please select your identity',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add your radio button widget here
            Column(
              children: [
                Row(
                  children: [
                    Radio(
                      value: 'male',
                      groupValue: null, // Add your group value here
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    Text('Male'),
                  ],
                ),
                SizedBox(width: 9.5),
                Row(
                  children: [
                    Radio(
                      value: 'female',
                      groupValue: null, // Add your group value here
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    Text('Female'),
                  ],
                ),
                SizedBox(width: 9.5),
                Row(
                  children: [
                    Radio(
                      value: 'ND',
                      groupValue: null, // Add your group value here
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    Text('Not Disclosed'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            RadioOptions(title: "Preferred Language", valueRadio1: "en", radio1: "English", valueRadio2: "hi", radio2: "Hindi"),
            SizedBox(height: 16.0),
            Text(
              'Preferred Language',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add your radio button widget here
            Column(
              children: [
                Row(
                  children: [
                    Radio(
                      value: 'male',
                      groupValue: null, // Add your group value here
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    Text('Male'),
                  ],
                ),
                SizedBox(width: 9.5),
                Row(
                  children: [
                    Radio(
                      value: 'female',
                      groupValue: null, // Add your group value here
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    Text('Female'),
                  ],
                ),
                SizedBox(width: 9.5),
                Row(
                  children: [
                    Radio(
                      value: 'ND',
                      groupValue: null, // Add your group value here
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    Text('Not Disclosed'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),

            ElevatedButton(
              onPressed: () {
                // Handle registration button press
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
