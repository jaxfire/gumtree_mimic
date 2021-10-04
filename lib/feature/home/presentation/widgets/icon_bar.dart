import 'package:flutter/material.dart';

import 'icon_bar_item.dart';

class IconBar extends StatelessWidget {
  const IconBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconBarItem(
            icon: Icons.directions_car_rounded,
            title: 'Cars',
          ),
          IconBarItem(
            icon: Icons.attach_money_rounded,
            title: 'For Sale',
          ),
          IconBarItem(
            icon: Icons.house_rounded,
            title: 'Property',
          ),
          IconBarItem(
            icon: Icons.work_rounded,
            title: 'Jobs',
          ),
          IconBarItem(
            icon: Icons.more_vert_rounded,
            title: 'More',
          ),
        ],
      ),
    );
  }
}
