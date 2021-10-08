import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home_screen/domain/listing.dart';

class ListingDetailTabContent extends StatelessWidget {
  final Listing listing;

  const ListingDetailTabContent({
    Key? key,
    required this.listing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          // TODO: // Show correct description content base on which tab is selected.
          child: Text(listing.description.summary),
        ),
      ),
    );
  }
}
