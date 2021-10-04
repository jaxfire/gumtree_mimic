import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GumtreeIcon extends StatelessWidget {
  final Color? colour;
  final double? size;

  const GumtreeIcon({Key? key, this.size, required this.colour})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/gumtree_icon.svg',
      width: size,
      height: size,
      color: colour,
      semanticsLabel: 'Acme Logo',
    );
  }
}
