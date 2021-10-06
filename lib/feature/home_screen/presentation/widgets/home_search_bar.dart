import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          Icons.menu_sharp,
          color: Colors.grey[400],
          size: 28.0,
        ),
        tileColor: Colors.white,
        title: Text(
          'Search Gumtree',
          style: TextStyle(
            fontFamily: 'Galano',
            color: Colors.grey[400],
            fontWeight: FontWeight.w500,
            fontSize: 17.0,
          ),
        ),
        trailing: Icon(
          Icons.mic_none_rounded,
          color: Colors.grey[400],
          size: 28.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }
}
