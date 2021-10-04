import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';

import 'widgets/gumtree_icon.dart';
import 'widgets/star_badge.dart';

// TODO: Navigate to home after initialisation occurs
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(darkGreen, BlendMode.multiply),
            child: Image.asset(
              'assets/images/splash_screen_background.jpg',
              fit: BoxFit.fitHeight,
              height: double.infinity,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        GumtreeIcon(
                          size: 40.0,
                          colour: lightGreen,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Gumtree',
                          style: TextStyle(
                            fontFamily: 'Galano',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 1.2,
                            fontSize: 21.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Buy. Sell.',
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Transform.rotate(
                      angle: 0.35,
                      child: StarBadge(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
