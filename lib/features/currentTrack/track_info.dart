import 'package:flutter/material.dart';

import '../../data/data.dart';

class TrackInfo extends StatelessWidget {
  const TrackInfo({required this.track, super.key});

  final Song? track;

  @override
  Widget build(BuildContext context) {
    if (track == null) return const SizedBox.shrink();
    return Row(
      children: [
        const Image(
          image: AssetImage("assets/lofigirl.jpg"),
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              track!.title,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              track!.artist,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.grey),
            )
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
      ],
    );
  }
}
