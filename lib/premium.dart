import 'package:flutter/material.dart';

class PremiumMembershipPage extends StatelessWidget {
  const PremiumMembershipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              
              children: [
                Padding(padding: EdgeInsets.only(top: 20,bottom: 20)),
                Icon(Icons.star, size: 20, color: Color.fromRGBO(181, 53, 134, 1)),
                SizedBox(width: 8,height: 16,),
                Text('Premium', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(181, 53, 134, 1),)),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Best plan for you',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Sed tempor lacus augue, at fringilla tellus mattis quis. Aliquam pretium lectus vitae ligula.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Container(
  decoration: BoxDecoration(
    color: Colors.grey[200], // Adjust the color as needed
    borderRadius: BorderRadius.circular(8),
  ),
  padding: EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
  children: [
    Image.asset(
      'assets/rupee.png',  // Replace with the correct path and filename
      width: 22,
      height: 16,
    ),
    SizedBox(width: 4),
    Text(
      '1500/-',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      ' per month',
      style: TextStyle(
        fontSize: 14,
      ),
    ),
  ],
),

      SizedBox(height: 16),
      Text(
        'Benefits :-',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromRGBO(181, 53, 134, 1),),
      ),
      SizedBox(height: 8),
      Text(
        'Included in your membership',
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(height: 8),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 16),
              ),
              SizedBox(width: 8),
              Text('Unlimited Talk Time'),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 16),
              ),
              SizedBox(width: 8),
              Text('Unlimited Video Calls'),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 16),
              ),
              SizedBox(width: 8),
              Text('Provided by Top Rated Therapist'),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 16),
              ),
              SizedBox(width: 8),
              Text('Messaging Anytime'),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 16),
              ),
              SizedBox(width: 8),
              Text('Chat Sessions'),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 16),
              ),
              SizedBox(width: 8),
              Text('Phone sessions'),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlue,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 16),
              ),
              SizedBox(width: 8),
              Text('Video sessions'),
            ],
          ),
        ],
      ),
    ],
  ),
),

            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Original Cost'),
                    SizedBox(height: 10),
                    Text('Discount'),
                    SizedBox(height: 10),
                    Text('GST'),
                    SizedBox(height: 10),
                    Text('Total Amount', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('1800'),
                    SizedBox(height: 10),
                    Text('250'),
                    SizedBox(height: 10),
                    Text('50'),
                    SizedBox(height: 10),
                    Text('1500/-', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
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
                    'Proceed Payment',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(24),
              ),
              padding: EdgeInsets.symmetric(vertical: 1),
              child: TextButton(
                onPressed: () {
                  // Maybe Later button logic
                },
                child: Text(
                  'Maybe Later',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MessengerBottomNavigationBar(),
    );
  }
}

class MessengerBottomNavigationBar extends StatelessWidget {
  const MessengerBottomNavigationBar({Key? key});

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
            icon:Icons.star, 
            label: 'Premium',
            onPressed: () {
              // Handle premium icon button press
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

void main() {
  runApp(MaterialApp(
    home: PremiumMembershipPage(),
    debugShowCheckedModeBanner: false,
  ));
}
