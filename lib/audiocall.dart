import 'package:chatapp/premium.dart';
import 'package:flutter/material.dart';

class AudioCallPage extends StatelessWidget {
  const AudioCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           ClipRRect(
  borderRadius: BorderRadius.vertical(
    bottom: Radius.elliptical(
      MediaQuery.of(context).size.width * 0.95,
      200.0,
    ),
  ),
  child: Stack(
    children: [
      Container(
        height: 280.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(0, 173, 234, 1),
              Color.fromRGBO(199, 35, 139, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(blurRadius: 10.0),
          ],
        ),
      ),
       Positioned(
        top: 0,
        bottom: 0,
        right: 0,
        left: 0,
        child: Image.asset('assets/wave.png'),
      ),
      Positioned(
        top: 90,
        bottom: 0,
        right: 0,
        left: 0,
        child: Image.asset('assets/audio.png'),
      ),
    ],
  ),
),
 Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 15),
                  child: Text(
                    'AudioCall',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
  child: ListView.builder(
    itemCount: 10, // Replace with the actual count of users
    itemBuilder: (context, index) {
      // Replace with logic to fetch user data
      final userName = 'User $index';
      final userHours = '1000hr';
      final userGroup = '500';
      final userRating = '5/5';
      final userRelationship = 'Friend'; // Replace with user relationship data

      return Padding(
        padding: EdgeInsets.only(bottom: 16.0), // Add margin after each user
        child: ListTile(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userRelationship,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(199, 35, 139, 1),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    userName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
             Container(
  width: 35,
  height: 40,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color: Color.fromRGBO(199, 35, 139, 1),
      width: 2,
    ),
  ),
  child: Icon(
    Icons.call,
    color: Color.fromRGBO(199, 35, 139, 1),
    size: 20,
  ),
),

            ],
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.timer,
                color: Colors.black,
              ),
              SizedBox(width: 4),
              Text(userHours),
              SizedBox(width: 12),
              Icon(
                Icons.group,
                color: Colors.black,
              ),
              SizedBox(width: 4),
              Text(userGroup),
              SizedBox(width: 12),
              Icon(
                Icons.star,
                color: Colors.black,
              ),
              SizedBox(width: 4),
              Text(userRating),
            ],
          ),
        ),
      );
    },
  ),
),

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MessengerBottomNavigationBar(),
    );
  }
}

class MessengerBottomNavigationBar extends StatelessWidget {
  const MessengerBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: BoxDecoration(
        color: Color.fromRGBO(181, 53, 134, 1),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            icon: Icons.home,
            label: 'Home',
            onPressed: () {
              // Handle home icon button press
            },
          ),
          BottomNavItem(
            icon: Icons.person,
            label: 'Profile',
            onPressed: () {
              // Handle profile icon button press
            },
          ),
          BottomNavItem(
            icon: Icons.star_border_outlined,
            label: 'Premium',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PremiumMembershipPage()));
            },
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const BottomNavItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
          color: Colors.white,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
