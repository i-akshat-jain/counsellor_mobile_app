import 'certificateView.dart';
import '../constants/colors.dart';
import '../constants/nextPage.dart';
import '../constants/slideBox.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class HelpView extends StatefulWidget {
  @override
  _HelpViewState createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  bool isExpanded = false;

  void onChanged(String? value) {
    // Handle radio button selection
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 40),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset('assets/images/certificate.svg'),
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Row(
                children: [
                  Radio<String>(
                    value: "takeHelp",
                    groupValue: null,
                    onChanged: onChanged,
                  ),
                  Text("Take Help"),
                ],
              ),
              SizedBox(width: 9.5),
              Row(
                children: [
                  Radio<String>(
                    value: "takeHelp",
                    groupValue: null,
                    onChanged: onChanged,
                  ),
                  Text("Take Help"),
                ],
              ),
              SizedBox(width: 9.5),
              Row(
                children: [
                  Radio<String>(
                    value: "takeHelp",
                    groupValue: null,
                    onChanged: onChanged,
                  ),
                  Text("Take Help"),
                ],
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SlideBox(
                    title: "Personal Life Help",
                    boxColor: AppColors.darkPink,
                  ),
                  SizedBox(height: 16.0),
                  SlideBox(
                    title: "Professional Life Help",
                    boxColor: AppColors.darkPink,
                  ),
                  SizedBox(height: 16.0),
                  SlideBox(
                    title: "Credentials",
                    boxColor: AppColors.darkPink,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0, top: 3),
              child: NextPageButton(
                nextPage: CertificateView(),
                text: 'You want to be certified?',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
