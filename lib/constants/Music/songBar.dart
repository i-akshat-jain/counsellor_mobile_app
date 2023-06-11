import '../../view/musicView.dart';
import 'package:flutter/material.dart';

class SongBarItem extends StatelessWidget {
  final Song song;
  final VoidCallback onTap;

  SongBarItem({
    required this.song,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(song.tag),
          Text(song.name),
          Text('Times Played: ${song.timesPlayed}'),
        ],
      ),
    );
  }
}
