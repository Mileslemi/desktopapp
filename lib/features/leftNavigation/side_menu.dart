import 'package:flutter/material.dart';

import '../../constants/sizes.dart';
import 'your_library.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 220,
      color: Theme.of(context).primaryColor,
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage("assets/spotify_logo.png"),
              height: 55,
              filterQuality: FilterQuality.high,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              "Home",
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text(
              "Search",
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.audiotrack),
            title: const Text(
              "Radio",
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: defaultSpacing,
          ),
          const YourLibrary()
        ],
      ),
    );
  }
}
