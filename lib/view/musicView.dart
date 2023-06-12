import 'package:flutter/material.dart';
import '../constants/Music/songBar.dart';

class Song {
  final String tag;
  final String name;
  final int timesPlayed;

  Song({
    required this.tag,
    required this.name,
    required this.timesPlayed,
  });
}

class SongBarView extends StatelessWidget {
  final List<Song> songs = [
    Song(tag: 'Tag 1', name: 'Song 1', timesPlayed: 10),
    Song(tag: 'Tag 2', name: 'Song 2', timesPlayed: 5),
    Song(tag: 'Tag 3', name: 'Song 3', timesPlayed: 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Song Bar'),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];
          return SongBarItem(
            song: song,
            onTap: () {
              // Handle song item tap
            },
          );
        },



      ),
    );
  }
}
