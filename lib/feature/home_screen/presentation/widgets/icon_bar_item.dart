import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';

class IconBarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const IconBarItem({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: lightPink,
            size: 40.0,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 13.0),
          ),
        ],
      ),
    );
  }
}
