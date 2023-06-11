import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String senderName;

  const ChatScreen({Key? key, required this.senderName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              child: Text('SN'), // Replace with user's profile picture
            ),
            SizedBox(width: 8),
            Text(senderName),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle phone call icon button press
            },
            icon: Icon(Icons.phone),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with the actual number of chat messages
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Message $index'), // Replace with the chat message
                );
              },
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
      color: Colors.grey[200],
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: 16),
          IconButton(
            onPressed: () {
              // Handle send message icon button press
            },
            icon: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
