import 'package:flutter/material.dart';

class ListingBottomBarContainer extends StatelessWidget {
  final Widget? child;

  const ListingBottomBarContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ),
      child: child,
    );
  }
}
