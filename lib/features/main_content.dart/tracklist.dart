import 'package:desktopapp/features/main_content.dart/model/current_track_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      rows: songs.map((song) {
        final selected =
            context.watch<CurrentTrackModel>().selected?.id == song.id;
        final textStyle = Theme.of(context).textTheme.bodyMedium?.apply(
              color: selected ? Colors.green : Colors.grey,
            );
        return DataRow(
          selected: selected,
          onSelectChanged: (_) =>
              context.read<CurrentTrackModel>().selectSong(song),
          cells: [
            DataCell(
              Text(
                song.title,
                style: textStyle,
              ),
            ),
            DataCell(
              Text(
                song.artist,
                style: textStyle,
              ),
            ),
            DataCell(
              Text(
                song.album,
                style: textStyle,
              ),
            ),
            DataCell(
              Text(
                song.duration,
                style: textStyle,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
