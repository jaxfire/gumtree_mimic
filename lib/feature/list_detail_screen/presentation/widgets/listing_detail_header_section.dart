import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/list_detail_screen/list_detail_screen_arguments.dart';

class ListingDetailHeaderSection extends StatelessWidget {
  final ListDetailScreenArguments listing;

  const ListingDetailHeaderSection({
    Key? key,
    required this.listing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listing.listing.title,
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Text(
                  listing.listing.price,
                  style: TextStyle(fontSize: 30.0),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.blue,
                      size: 18.0,
                    ),
                    Text(
                      listing.listing.location,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            width: double.infinity,
            padding: EdgeInsets.all(18.0),
          ),
        ],
      ),
    );
  }
}
