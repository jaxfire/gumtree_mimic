import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home/domain/listing.dart';

import 'listing_grid_item.dart';

class ListingGrid extends StatelessWidget {
  final List<Listing> listings;

  const ListingGrid({
    Key? key,
    required this.listings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) => ListingGridItem(listing: listings[index]),
          childCount: listings.length,
        ),
      ),
    );
  }
}
