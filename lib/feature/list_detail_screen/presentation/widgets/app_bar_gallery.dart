import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';

const expandedHeight = 380.0;

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.favorite_outline_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 20.0,
          ),
          Icon(
            Icons.share_rounded,
            color: Colors.white,
          )
        ],
      ),
      backgroundColor: darkPink,
      expandedHeight: expandedHeight,
      pinned: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: GalleryPager(),
      ),
    );
  }
}

class GalleryPager extends StatelessWidget {
  GalleryPager({Key? key}) : super(key: key);

  final List<String> images = [
    'https://png.pngtree.com/element_our/png_detail/20181205/sports-car-vector-icon-png_259715.jpg',
    'https://png.pngtree.com/png-vector/20200113/ourlarge/pngtree-tourist-traveler-car-vector-png-image_2127937.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Image.network(
          images[0],
          fit: BoxFit.fill,
          height: expandedHeight,
          width: double.infinity,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.3],
              colors: [
                Colors.black54,
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
