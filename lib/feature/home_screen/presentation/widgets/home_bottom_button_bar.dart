import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';

class HomeBottomButtonBar extends StatelessWidget {
  const HomeBottomButtonBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      height: 55.0,
      child: Row(
        children: [
          HomeBottomButtonItem(
            iconData: Icons.push_pin_rounded,
            title: 'Post ad',
          ),
          SizedBox(
            width: 2.0,
          ),
          HomeBottomButtonItem(
            iconData: Icons.directions_car_rounded,
            title: 'Sell car',
          ),
        ],
      ),
    );
  }
}

class HomeBottomButtonItem extends StatelessWidget {
  final IconData iconData;
  final String title;

  const HomeBottomButtonItem(
      {Key? key, required this.iconData, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(iconData, color: lightPink),
              Text(
                title,
                style: TextStyle(fontSize: 13.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
