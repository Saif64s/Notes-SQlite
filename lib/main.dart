import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/note_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Notes SQLite';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.light,
        theme: ThemeData(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        home: const NotesPage(),
      );
}
