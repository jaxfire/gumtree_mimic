import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';

class ListingBottomBarChat extends StatelessWidget {
  const ListingBottomBarChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.phone,
          color: lightPink,
          size: 28.0,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Hi, is this still available?',
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 44.0,
          width: 44.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Icon(
              Icons.send_rounded,
              color: Colors.white,
              size: 28.0,
            ),
          ),
          decoration: BoxDecoration(
            color: lightPink,
            borderRadius: BorderRadius.circular(4.0),
          ),
        )
      ],
    );
  }
}
