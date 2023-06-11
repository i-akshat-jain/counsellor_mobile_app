import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:counsellor_mobile_app/view/musicView.dart';
import 'package:counsellor_mobile_app/constants/colors.dart';

class ProfilePersonal extends StatefulWidget {
  @override
  _ProfilePersonalState createState() => _ProfilePersonalState();
}

class _ProfilePersonalState extends State<ProfilePersonal> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                'assets/images/homePersonal.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SongBarView()),
                                );
                              },
                              child: Column(
                                children: [
                                  Icon(Icons.headset, color: Colors.black,),
                                  SizedBox(height: 8.0),
                                ],
                              ),
                              style: ButtonStyle(
                                 minimumSize: MaterialStateProperty.all(Size(61, 60)),
                                elevation:
                                    MaterialStateProperty.resolveWith<double>(
                                        (states) {
                                  // Set the elevation to a non-zero value when the button is pressed
                                  return states.contains(MaterialState.pressed)
                                      ? 8.0
                                      : 0.0;
                                }),
                               backgroundColor:
                                    MaterialStateProperty.all<Color?>(
                                        Colors.white),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Music")
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(Icons.chat, color: Colors.black,),
                                  SizedBox(height: 8.0),
                                ],
                              ),
                              style: ButtonStyle(
                                 minimumSize: MaterialStateProperty.all(Size(61, 60)),
                                elevation:
                                    MaterialStateProperty.resolveWith<double>(
                                        (states) {
                                  // Set the elevation to a non-zero value when the button is pressed
                                  return states.contains(MaterialState.pressed)
                                      ? 8.0
                                      : 0.0;
                                }),
                               backgroundColor:
                                    MaterialStateProperty.all<Color?>(
                                        Colors.white),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Message")
                          ],
                        ),

                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.chat,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 8.0),
                                ],
                              ),
                              style: ButtonStyle(
                                minimumSize:
                                    MaterialStateProperty.all(Size(61, 60)),
                                elevation:
                                    MaterialStateProperty.resolveWith<double>(
                                        (states) {
                                  // Set the elevation to a non-zero value when the button is pressed
                                  return states.contains(MaterialState.pressed)
                                      ? 8.0
                                      : 0.0;
                                }),
                                backgroundColor:
                                    MaterialStateProperty.all<Color?>(
                                        Colors.white),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Message")
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.chat,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 8.0),
                                ],
                              ),
                              style: ButtonStyle(
                                minimumSize:
                                    MaterialStateProperty.all(Size(61, 60)),
                                elevation:
                                    MaterialStateProperty.resolveWith<double>(
                                        (states) {
                                  // Set the elevation to a non-zero value when the button is pressed
                                  return states.contains(MaterialState.pressed)
                                      ? 8.0
                                      : 0.0;
                                }),
                                backgroundColor:
                                    MaterialStateProperty.all<Color?>(
                                        Colors.white),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Message")
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.chat,
                                    color: Colors.black,
                                  ),
                                  SizedBox(height: 8.0),
                                ],
                              ),
                              style: ButtonStyle(
                                minimumSize:
                                    MaterialStateProperty.all(Size(61, 60)),
                                elevation:
                                    MaterialStateProperty.resolveWith<double>(
                                        (states) {
                                  // Set the elevation to a non-zero value when the button is pressed
                                  return states.contains(MaterialState.pressed)
                                      ? 8.0
                                      : 0.0;
                                }),
                                backgroundColor:
                                    MaterialStateProperty.all<Color?>(
                                        Colors.white),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text("Message")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              constraints: BoxConstraints(maxWidth: 500),
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Personal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
