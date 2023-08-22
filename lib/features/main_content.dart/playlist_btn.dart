import 'package:desktopapp/constants/sizes.dart';
import 'package:flutter/material.dart';

class PlaylistButtons extends StatelessWidget {
  const PlaylistButtons({
    super.key,
    required this.followers,
  });

  final String followers;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text("Play"),
        ),
        const SizedBox(
          width: defaultSpacing * .5,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz,
          ),
        ),
        const Spacer(),
        Text("FOLLOWERS\n $followers"),
      ],
    );
  }
}
