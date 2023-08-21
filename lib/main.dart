import 'package:flutter/material.dart';

import 'themes/main_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MainTheme.lightTheme,
      darkTheme: MainTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: null,
    );
  }
}
