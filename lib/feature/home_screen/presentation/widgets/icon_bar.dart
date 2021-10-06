import 'dart:math';

import 'package:flutter/material.dart';

import 'icon_bar_item.dart';

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class SliverIconBar extends StatelessWidget {
  const SliverIconBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: false,
      floating: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 92.0,
        maxHeight: 92.0,
        child: Container(
          height: 92.0,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
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
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// import 'icon_bar_item.dart';
//
// class SliverIconBar extends StatelessWidget {
//   const SliverIconBar({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // 2
//     return SliverAppBar(
//       title: Container(
//         color: Colors.white,
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             IconBarItem(
//               icon: Icons.directions_car_rounded,
//               title: 'Cars',
//             ),
//             IconBarItem(
//               icon: Icons.attach_money_rounded,
//               title: 'For Sale',
//             ),
//             IconBarItem(
//               icon: Icons.house_rounded,
//               title: 'Property',
//             ),
//             IconBarItem(
//               icon: Icons.work_rounded,
//               title: 'Jobs',
//             ),
//             IconBarItem(
//               icon: Icons.more_vert_rounded,
//               title: 'More',
//             ),
//           ],
//         ),
//       ),
//       backgroundColor: Colors.white,
//       centerTitle: true,
//       pinned: false,
//       floating: true,
//       snap: true,
//       elevation: 0,
//     );
//   }
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return SliverToBoxAdapter(
//   //     child: Container(
//   //       color: Colors.white,
//   //       child: Row(
//   //         mainAxisSize: MainAxisSize.max,
//   //         mainAxisAlignment: MainAxisAlignment.spaceAround,
//   //         children: [
//   //           IconBarItem(
//   //             icon: Icons.directions_car_rounded,
//   //             title: 'Cars',
//   //           ),
//   //           IconBarItem(
//   //             icon: Icons.attach_money_rounded,
//   //             title: 'For Sale',
//   //           ),
//   //           IconBarItem(
//   //             icon: Icons.house_rounded,
//   //             title: 'Property',
//   //           ),
//   //           IconBarItem(
//   //             icon: Icons.work_rounded,
//   //             title: 'Jobs',
//   //           ),
//   //           IconBarItem(
//   //             icon: Icons.more_vert_rounded,
//   //             title: 'More',
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
// }
