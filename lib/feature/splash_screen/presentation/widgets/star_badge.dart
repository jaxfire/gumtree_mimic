import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gumtree_motors/common/colours.dart';

import 'gumtree_icon.dart';

class StarBadge extends StatelessWidget {
  const StarBadge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.0,
      height: 180.0,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.certificate,
              color: lightGreen,
              size: 130.0,
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
