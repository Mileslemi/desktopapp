import 'package:desktopapp/constants/sizes.dart';
import 'package:desktopapp/data/data.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'playlist_btn.dart';
import 'playlist_header.dart';
import 'tracklist.dart';

class PlaylistScreen extends StatefulWidget {
  final Playlist playlist;
  const PlaylistScreen({required this.playlist, super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 100,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              customBorder: const CircleBorder(),
              child: Container(
                padding: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black54,
                ),
                child: const Icon(Icons.chevron_left),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {},
              customBorder: const CircleBorder(),
              child: Container(
                padding: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black54,
                ),
                child: const Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.person_4_rounded),
            label: const Text("Miles Lemi"),
          ),
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_down),
            padding: const EdgeInsets.only(),
            onPressed: () {},
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFAF1018),
                darkColor,
              ],
              stops: [
                0,
                0.3
              ]),
        ),
        child: Scrollbar(
          thumbVisibility: true,
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
            children: [
              PlaylistHeader(
                playlist: widget.playlist,
              ),
              const SizedBox(
                height: defaultSpacing,
              ),
              PlaylistButtons(followers: widget.playlist.followers),
              const SizedBox(
                height: defaultSpacing * .5,
              ),
              TrackList(songs: widget.playlist.songs)
            ],
          ),
        ),
      ),
    );
  }
}
