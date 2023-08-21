import 'package:flutter/material.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage("assets/spotify_logo.png"),
              height: 55,
              filterQuality: FilterQuality.high,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Home",
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text(
              "Search",
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text(
              "Radio",
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
