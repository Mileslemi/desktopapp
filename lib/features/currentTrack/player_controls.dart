import 'package:flutter/material.dart';

import '../../data/data.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({required this.track, super.key});

  final Song? track;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shuffle),
              padding: const EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.skip_previous_outlined),
              padding: const EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_circle_outline),
              padding: const EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.skip_next_outlined),
              padding: const EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.repeat),
              padding: const EdgeInsets.only(),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              "0:00",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.grey),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Container(
              height: 5.0,
              width: MediaQuery.of(context).size.width * .3,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              track?.duration ?? '0.00',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
