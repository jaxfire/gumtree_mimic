import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home/presentation/widgets/product_grid_item.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        color: Colors.grey[300],
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Just for you',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    'United Kingdom',
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              shrinkWrap: true,
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
          ],
        ),
      ),
    );
  }
}
