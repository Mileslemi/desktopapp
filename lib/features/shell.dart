import 'package:desktopapp/features/leftNavigation/side_menu.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import 'currentTrack/current_track.dart';
import 'main_content.dart/playlist_screen.dart';

class Shell extends StatelessWidget {
  const Shell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (MediaQuery.of(context).size.width > 800) const SideMenu(),
                const Expanded(
                  child: PlaylistScreen(
                    playlist: lofihiphopPlaylist,
                  ),
                ),
              ],
            ),
          ),
          const CurrentTrack()
        ],
      ),
    );
  }
}
