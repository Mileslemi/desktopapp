import 'package:desktopapp/constants/sizes.dart';
import 'package:desktopapp/data/data.dart';
import 'package:flutter/material.dart';

class YourLibrary extends StatefulWidget {
  const YourLibrary({
    super.key,
  });

  @override
  State<YourLibrary> createState() => _YourLibraryState();
}

class _YourLibraryState extends State<YourLibrary> {
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
    return Expanded(
      child: Scrollbar(
        thumbVisibility: true,
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 10,
                  ),
                  child: Text(
                    "YOUR LIBRARY",
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ...yourLibrary.map(
                  (e) => ListTile(
                    dense: true,
                    title: Text(
                      e,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 10,
                  ),
                  child: Text(
                    "PLAYLISTS",
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ...playlists.map(
                  (e) => ListTile(
                    dense: true,
                    title: Text(
                      e,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
