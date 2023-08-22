import 'package:flutter/material.dart';

import '../../data/data.dart';

class TrackList extends StatelessWidget {
  const TrackList({
    super.key,
    required this.songs,
  });

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingTextStyle: Theme.of(context).textTheme.bodyLarge,
      showCheckboxColumn: false,
      //dataRowHeight: 46,
      columns: const [
        DataColumn(label: Text("TITLE")),
        DataColumn(label: Text("ARTIST")),
        DataColumn(label: Text("ALBUM")),
        DataColumn(label: Icon(Icons.access_time)),
      ],
      rows: songs
          .map(
            (song) => DataRow(
              onSelectChanged: (value) {},
              cells: [
                DataCell(
                  Text(
                    song.title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                DataCell(
                  Text(
                    song.artist,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                DataCell(
                  Text(
                    song.album,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                DataCell(
                  Text(
                    song.duration,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
