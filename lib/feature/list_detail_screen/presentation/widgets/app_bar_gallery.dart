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

// TODO: Move to separate file
// TODO: Get state from BloC/Cubit instead of StatefulWidget
class GalleryPager extends StatefulWidget {
  const GalleryPager({Key? key}) : super(key: key);

  static const List<String> images = [
    'https://png.pngtree.com/element_our/png_detail/20181205/sports-car-vector-icon-png_259715.jpg',
    'https://png.pngtree.com/png-vector/20200113/ourlarge/pngtree-tourist-traveler-car-vector-png-image_2127937.jpg',
  ];

  @override
  State<GalleryPager> createState() => _GalleryPagerState();
}

class _GalleryPagerState extends State<GalleryPager> {
  final _controller = PageController(
    keepPage: true,
  );

  final List<MyImageWidget> imageWidgets =
      GalleryPager.images.map((e) => MyImageWidget(imageUrl: e)).toList();

  int currentPageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        PageView(
          controller: _controller,
          children: imageWidgets,
          onPageChanged: (newPageNumber) {
            setState(() {
              currentPageNumber = newPageNumber;
            });
          },
        ),
        IgnorePointer(
          child: Container(
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
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: GalleryPageIndicator(
            pageNumber: currentPageNumber + 1,
          ),
        ),
      ],
    );
  }
}

class GalleryPageIndicator extends StatelessWidget {
  final int pageNumber;

  const GalleryPageIndicator({Key? key, required this.pageNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: transparentGrey,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.image,
            color: Colors.white,
            size: 16.0,
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            '$pageNumber/20',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

// TODO: Move to a separate file.
class MyImageWidget extends StatelessWidget {
  final String imageUrl;

  const MyImageWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      height: expandedHeight,
    );
  }
}
