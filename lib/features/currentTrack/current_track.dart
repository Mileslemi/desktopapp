import 'package:desktopapp/data/data.dart';
import 'package:desktopapp/features/main_content.dart/model/current_track_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'player_controls.dart';
import 'track_info.dart';

class CurrentTrack extends StatelessWidget {
  const CurrentTrack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Song? track = context.watch<CurrentTrackModel>().selected;
    return Container(
      height: 80,
      width: double.infinity,
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            TrackInfo(track: track),
            const Spacer(),
            PlayerControls(
              track: track,
            ),
            const Spacer(),
            if (MediaQuery.of(context).size.width > 800) const MoreControls()
          ],
        ),
      ),
    );
  }
}

class MoreControls extends StatelessWidget {
  const MoreControls({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.devices_outlined),
          padding: const EdgeInsets.only(),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.volume_up_outlined),
              padding: const EdgeInsets.only(),
            ),
            Container(
              height: 5.0,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.fullscreen_outlined),
              padding: const EdgeInsets.only(),
            ),
          ],
        ),
      ],
    );
  }
}
