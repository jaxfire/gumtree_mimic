import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home_screen/domain/listing.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_card.dart';

class ListingDetailTabContent extends StatelessWidget {
  final Listing listing;
  final int selectedTabIndex;
  final EdgeInsetsGeometry? margin;

  const ListingDetailTabContent({
    Key? key,
    required this.listing,
    required this.selectedTabIndex,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListingDetailCard(
      margin: margin,
      child: buildContent(),
    );
  }

  Widget buildContent() {
    switch (selectedTabIndex) {
      case 0:
        return buildSummary();
      case 1:
        return buildSpecs();
      default:
        return buildFeatures();
    }
  }

  Widget buildSummary() {
    return Text(listing.description.summary);
  }

  Widget buildSpecs() {
    createSpecRows();

    return Column(
      children: createSpecRows(),
    );
  }

  Widget buildFeatures() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 6,
      padding: EdgeInsets.zero,
      children: listing.description.features!
          .map((feature) => Text(feature))
          .toList(),
    );
  }

  List<Widget> createSpecRows() {
    Iterable<MapEntry<String, String>> entries =
        listing.description.specs!.entries;

    List<Container> specRows = [];

    for (int i = 0; i < entries.length; i++) {
      specRows.add(
        Container(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          // Don't add bottom border / divider to the last item
          decoration: (i == entries.length - 1)
              ? null
              : BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                entries.elementAt(i).key,
                style: TextStyle(fontSize: 15.0, color: Colors.grey.shade600),
              ),
              Text(
                entries.elementAt(i).value,
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
        ),
      );
    }
    return specRows;
  }
}
