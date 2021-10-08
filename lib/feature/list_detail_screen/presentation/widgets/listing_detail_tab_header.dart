import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home_screen/domain/listing.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_card.dart';

class ListingDetailTabHeader extends StatelessWidget {
  final Listing listing;
  final EdgeInsetsGeometry? margin;

  const ListingDetailTabHeader({
    Key? key,
    required this.listing,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListingDetailCard(
      padding: EdgeInsets.all(0.0),
      margin: margin,
      child: TabBar(
        labelColor: Colors.black,
        indicatorColor: Colors.black,
        unselectedLabelColor: Colors.grey.shade400,
        // TODO: Show correct tab headers
        tabs: buildTabsHeaders(),
      ),
    );
  }

  // Tab(text: 'Tab 1'),

  List<Tab> buildTabsHeaders() {
    List<Tab> tabs = [];

    tabs.add(Tab(text: 'Summary'));

    if (listing.description.specs != null) {
      tabs.add(Tab(text: 'Specs'));
    }

    if (listing.description.features != null) {
      tabs.add(Tab(text: 'Features'));
    }

    return tabs;
  }
}
