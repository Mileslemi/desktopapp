import 'dart:io';

import 'package:desktopapp/features/main_content.dart/model/current_track_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:window_size/window_size.dart';

import 'features/shell.dart';
import 'themes/main_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isLinux || Platform.isMacOS || Platform.isWindows)) {
    setWindowMinSize(const Size(1000, 800));
  }

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CurrentTrackModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: MainTheme.lightTheme,
        darkTheme: MainTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: const Shell(),
      ),
    );
  }
}
