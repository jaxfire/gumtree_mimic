import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gumtree_motors/common/colours.dart';
import 'package:gumtree_motors/feature/splash_screen/presentation/cubit/splash_screen_cubit.dart';

import 'widgets/gumtree_icon.dart';
import 'widgets/star_badge.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashScreenCubit(),
      child: BlocListener<SplashScreenCubit, SplashScreenState>(
        listener: (BuildContext context, state) {
          if (state is SplashScreenComplete) {
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/home_screen', (Route<dynamic> route) => false);
          }
        },
        child: Scaffold(
          backgroundColor: darkGreen,
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
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child:
                            BlocBuilder<SplashScreenCubit, SplashScreenState>(
                          builder: (BuildContext context, Object? state) {
                            return (state is SplashScreenInitial)
                                ? SizedBox.shrink()
                                : CircularProgressIndicator(
                                    color: Colors.white,
                                  );
                          },
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
        ),
      ),
    );
  }
}
