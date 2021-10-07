import 'package:flutter/material.dart';

class ListingUserInfoRow extends StatelessWidget {
  final Widget leading;
  final String text;

  const ListingUserInfoRow({
    Key? key,
    required this.leading,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0),
      child: Row(
        children: [
          leading,
          SizedBox(
            width: 6.0,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}
