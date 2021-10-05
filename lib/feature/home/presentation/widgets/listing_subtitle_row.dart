import 'package:flutter/material.dart';

class ListingSubtitleRow extends StatelessWidget {
  final String leadingText;
  final String? trailingText;

  const ListingSubtitleRow(
      {Key? key, required this.leadingText, this.trailingText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 12.0,
      ),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: buildChildren(),
        ),
      ),
    );
  }

  List<Widget> buildChildren() {
    var builder = [
      Text(
        leadingText,
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 18.0,
        ),
      ),
    ];
    if (trailingText != null) {
      builder.add(
        Text(
          trailingText!,
          style: TextStyle(
            color: Colors.blue[700],
            fontSize: 18.0,
          ),
        ),
      );
    }
    return builder;
  }
}
