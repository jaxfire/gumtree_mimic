import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home/presentation/widgets/listing_subtitle_row.dart';

import 'icon_bar.dart';
import 'listing_grid_item.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey[300],
        child: CustomScrollView(
          slivers: [
            SliverIconBar(),
            ListingSubtitleRow(
              leadingText: 'Just for you',
              trailingText: 'United Kingdom',
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              sliver: SliverGrid.count(
                // physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                // shrinkWrap: true,
                children: [
                  ListingGridItem(),
                  ListingGridItem(),
                  ListingGridItem(),
                  ListingGridItem(),
                  ListingGridItem(),
                  ListingGridItem(),
                  ListingGridItem(),
                  ListingGridItem(),
                  ListingGridItem(),
                  ListingGridItem(),
                  ListingGridItem(),
                  ListingGridItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
