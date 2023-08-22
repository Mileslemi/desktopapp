import 'package:desktopapp/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../data/data.dart';

class PlaylistHeader extends StatelessWidget {
  const PlaylistHeader({
    super.key,
    required this.playlist,
  });

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image(
            image: AssetImage(playlist.imageURL),
            height: 200,
            width: 200,
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: defaultSpacing,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("PLAYLIST"),
              const SizedBox(height: defaultSpacing),
              Text(
                playlist.name,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: defaultSpacing),
              Text(
                playlist.description,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: defaultSpacing),
              Text(
                "Created by ${playlist.creator} . ${playlist.songs.length} songs, ${playlist.duration} min",
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        )
      ],
    );
  }
}
