import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home_screen/domain/listing.dart';

class ListingDetailTabHeader extends StatelessWidget {
  final Listing listing;

  const ListingDetailTabHeader({
    Key? key,
    required this.listing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TabBar(
        labelColor: Colors.black,
        indicatorColor: Colors.black,
        // TODO: Show correct tab headers
        tabs: [
          Tab(text: 'Tab 1'),
          Tab(text: 'Tab 2'),
        ],
      ),
    );
  }
}
