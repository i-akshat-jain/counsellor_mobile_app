import 'dart:io';
import '../constants/inputBox.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:counsellor_mobile_app/view/help.dart';
import 'package:counsellor_mobile_app/view/paymentView.dart';
import 'package:counsellor_mobile_app/constants/colors.dart';



class CertificateView extends StatefulWidget {
  @override
  _CertificateView createState() =>
      _CertificateView();
}

class _CertificateView
    extends State<CertificateView> {
  XFile? _imageFile;

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
              child: SvgPicture.asset('assets/images/certificate.svg'),
            ),
            SizedBox(height: 8.0),
            Text(
              'Please upload your Certificate',
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
            InputBox(title: "Course name", hintText: "Please enter here..."),
  
            SizedBox(height: 16.0),
            InputBox(title: "Certificate no", hintText: "Please enter here..."),
            SizedBox(height: 16.0),
            InputBox(
                title: "Institution Name",
                hintText: "Please enter here..."),
            SizedBox(height: 16.0),
            SizedBox(height: 16.0),
            FractionallySizedBox(
              widthFactor: 1.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentView()),
                  );
                },
                child: Text('Continue', style: TextStyle(color: AppColors.darkBlue)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue,
                    side: const BorderSide(
                      width: 1.0,
                      color: AppColors.darkBlue,
                    )),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpView()),
                  );
                },
                child: Text('Cancle', style: TextStyle(color: AppColors.darkBlue),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.grey,
                    side: const BorderSide(
                  width: 1.0,
                  color: AppColors.darkGrey,
                )
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
