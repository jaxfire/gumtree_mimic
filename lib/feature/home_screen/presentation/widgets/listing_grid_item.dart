import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home_screen/domain/listing.dart';
import 'package:gumtree_motors/feature/list_detail_screen/list_detail_screen_arguments.dart';

class ListingGridItem extends StatelessWidget {
  final Listing listing;

  const ListingGridItem({Key? key, required this.listing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/list_detail_screen',
          arguments: ListDetailScreenArguments(listing),
        );
      },
      child: Card(
        elevation: 2.0,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  listing.images[0],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                listing.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // TODO: Make the pound sign superscript.
                  Text(
                    listing.price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.grey,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
