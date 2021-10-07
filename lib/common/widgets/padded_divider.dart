import 'package:flutter/material.dart';

class PaddedDivider extends StatelessWidget {
  final Color colour;
  final double height;
  final double endIndent;
  final EdgeInsetsGeometry padding;

  const PaddedDivider(
      {Key? key,
      required this.colour,
      this.height = 2.0,
      this.endIndent = 0.0,
      required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Divider(
        color: colour,
        height: height,
        endIndent: endIndent,
      ),
    );
  }
}
