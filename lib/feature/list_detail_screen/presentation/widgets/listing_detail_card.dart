import 'package:flutter/material.dart';

class ListingDetailCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const ListingDetailCard({
    Key? key,
    required this.child,
    this.margin,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: (margin != null) ? margin : EdgeInsets.only(top: 8.0),
        padding: (padding != null) ? padding : EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
