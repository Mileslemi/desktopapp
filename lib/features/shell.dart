import 'package:desktopapp/constants/colors.dart';
import 'package:desktopapp/features/leftNavigation/side_menu.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
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
              children: const [
                SideMenu(),
                Expanded(
                  child: PlaylistScreen(
                    playlist: lofihiphopPlaylist,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 54,
            width: double.infinity,
            color: blueColor,
          )
        ],
      ),
    );
  }
}
