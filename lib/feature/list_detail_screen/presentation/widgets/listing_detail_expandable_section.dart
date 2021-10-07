import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_card.dart';

class ListingDetailExpandableSection extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final String title;
  final Widget expandedStateChild;

  const ListingDetailExpandableSection({
    Key? key,
    required this.title,
    required this.expandedStateChild,
    this.margin,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListingDetailCard(
      margin: margin,
      padding: padding,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          textColor: Colors.black,
          title: Text(
            title,
            style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 16.0,
            ),
          ),
          children: <Widget>[expandedStateChild],
        ),
      ),
    );
  }
}
