import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/common/colours.dart';

import 'gumtree_icon.dart';

class StarBadge extends StatelessWidget {
  const StarBadge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 200.0,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.star_rounded,
              color: lightGreen,
              size: 200.0,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GumtreeIcon(
                  colour: darkGreen,
                  size: 25.0,
                ),
                Text(
                  'Good \n Find',
                  style: TextStyle(
                      fontFamily: 'Galano',
                      fontWeight: FontWeight.w700,
                      color: darkGreen,
                      fontSize: 26.0,
                      height: 0.9),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
