import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home/presentation/home_screen.dart';
import 'package:gumtree_motors/feature/splash_screen/presentation/splash_screen.dart';

void main() {
  runApp(const GumtreeApp());
}

class GumtreeApp extends StatelessWidget {
  const GumtreeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gumtree Motors',
      // TODO: Inject in ThemeData?
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
