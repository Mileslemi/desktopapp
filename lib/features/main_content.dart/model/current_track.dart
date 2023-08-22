import 'package:flutter/foundation.dart';

import '../../../data/data.dart';

class CurrentTrackModel extends ChangeNotifier {
  Song? selected;

  void selectSong(Song song) {
    selected = song;
    notifyListeners();
  }
}
