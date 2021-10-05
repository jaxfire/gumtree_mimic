import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home/data/listing_repository.dart';
import 'package:gumtree_motors/feature/home/presentation/widgets/listing_subtitle_row.dart';

import 'icon_bar.dart';
import 'listing_grid.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listings = ListingRepository.getListings();

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
            ListingGrid(
              listings: listings,
            ),
            ListingSubtitleRow(leadingText: 'Your Recent Searches'),
          ],
        ),
      ),
    );
  }
}
