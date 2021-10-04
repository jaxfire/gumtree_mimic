import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';
import 'package:gumtree_motors/feature/home/presentation/widgets/home_bottom_button_bar.dart';
import 'package:gumtree_motors/feature/home/presentation/widgets/icon_bar.dart';
import 'package:gumtree_motors/feature/home/presentation/widgets/product_grid_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkPink,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
            ),
            IconBar(),
            Expanded(
              child: Container(
                color: Colors.grey[300],
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  children: [
                    ProductGridItem(),
                    ProductGridItem(),
                    ProductGridItem(),
                    ProductGridItem(),
                    ProductGridItem(),
                    ProductGridItem(),
                    ProductGridItem(),
                    ProductGridItem(),
                    ProductGridItem(),
                    ProductGridItem(),
                    ProductGridItem(),
                    ProductGridItem(),
                  ],
                ),
              ),
            ),
            HomeBottomButtonBar()
          ],
        ),
      ),
    );
  }
}
