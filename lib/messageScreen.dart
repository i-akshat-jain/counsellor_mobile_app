import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messenger'),
      ),
      body: Center(
        child: MessengerScreen(),
      ),
    );
  }
}

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    child: Text(
                      'Messenger',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with the actual number of messages
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(
                            senderName: 'Sender Name',
                          ),
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      child:
                          Text('Sender'), // Replace with the sender's initials or profile picture
                    ),
                    title: Text(
                        'Sender Name'), // Replace with the sender's name
                    subtitle: Text(
                        'This is a message'), // Replace with the message content
                    trailing: Text(
                        '12:34 PM'), // Replace with the message timestamp
                  );
                },
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
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
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
            icon: Icons.star,
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
class ChatScreen extends StatelessWidget {
  final String senderName;

  const ChatScreen({Key? key, required this.senderName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromRGBO(181, 53, 134, 1),
        title: Row(
          children: [
            CircleAvatar(
              child: Text('SN'), // Replace with user's profile picture
            ),
            SizedBox(width: 8),
            Text(senderName),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text('Chat screen for $senderName'),
            ),
          ),
          ChatSenderBar(),
        ],
      ),
    );
  }
}

class ChatSenderBar extends StatelessWidget {
  const ChatSenderBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 221, 242),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type a message...',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 175, 221, 242),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Container(
                height: 40,
                child: IconButton(
                  onPressed: () {
                    // Handle send message icon button press
                  },
                  icon: Icon(Icons.send),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
