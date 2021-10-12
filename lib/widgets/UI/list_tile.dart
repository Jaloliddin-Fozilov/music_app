import 'package:flutter/material.dart';
import 'package:music_app/widgets/models/list_model.dart';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class ListTileRoyxat extends StatelessWidget {
  final ListModeli royxatlar;
  final Function showPlayerPage;

  ListTileRoyxat(this.royxatlar, this.showPlayerPage);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showPlayerPage(context, royxatlar.id);
      },
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.play_circle_outlined,
          size: 32,
        ),
      ),
      title: Text(
        "${royxatlar.musician}",
        style: TextStyle(
          fontSize: 12,
          color: Colors.black54,
        ),
      ),
      subtitle: Text(
        "${royxatlar.name}",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
          "${(royxatlar.total.inSeconds / 60).toInt()}:${(royxatlar.total.inSeconds % 60)}"),
    );
  }
}
