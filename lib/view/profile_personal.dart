import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
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
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(Icons.headset),
                                  SizedBox(height: 8.0),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(61, 60),
                              ),
                            ),
                            Text("Listen")
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(Icons.chat),
                                  SizedBox(height: 8.0),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(61, 60),
                              ),
                            ),
                            Text("Chat")
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(Icons.call),
                                  SizedBox(height: 8.0),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(61, 60),
                              ),
                            ),
                            Text("Call")
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(Icons.video_call),
                                  SizedBox(height: 8.0),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(61, 60),
                              ),
                            ),
                            Text("Video Call")
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon(Icons.live_tv),
                                  SizedBox(height: 8.0),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(61, 60),
                              ),
                            ),
                            Text("Live")
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.darkPink,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
