import 'package:flutter/material.dart';

import 'feature/home/presentation/home_screen.dart';

void main() {
  runApp(const GumtreeApp());
}

class GumtreeApp extends StatelessWidget {
  const GumtreeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gumtree Motors',
      // TODO: Inject in ThemeData
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
