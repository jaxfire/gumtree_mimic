import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/list_detail_screen/list_detail_screen_arguments.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_card.dart';

class ListingDetailTabbedSection extends StatelessWidget {
  final ListDetailScreenArguments listing;

  const ListingDetailTabbedSection({
    Key? key,
    required this.listing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListingDetailCard(
      padding: EdgeInsets.zero,
      child: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Summary',
                ),
                Tab(
                  text: 'Specs',
                ),
              ],
            ),
            // TODO: Dynamically size based on selected tab's content
            // https://stackoverflow.com/questions/54642710/tabbarview-with-dynamic-container-height
            SizedBox(
              height: 200.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TabBarView(
                  children: [
                    Text(listing.listing.description),
                    Icon(Icons.directions_transit),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
