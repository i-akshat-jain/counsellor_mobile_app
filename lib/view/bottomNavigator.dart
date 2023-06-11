import '../constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:counsellor_mobile_app/view/profile_personal.dart';


class BottomNavigatorView extends StatefulWidget {
  @override
  _BottomNavigatorViewState createState() => _BottomNavigatorViewState();
}

class _BottomNavigatorViewState extends State<BottomNavigatorView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ProfilePersonal(),
    ProfilePersonal(),
    ProfilePersonal(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
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
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium),
            label: 'Premium',
          ),
        ],
      ),
    );
  }
}
