import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';
import 'package:gumtree_motors/feature/list_detail_screen/list_detail_screen_arguments.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/app_bar_gallery.dart';

class ListDetailScreen extends StatelessWidget {
  const ListDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListDetailScreenArguments args =
        ModalRoute.of(context)!.settings.arguments as ListDetailScreenArguments;

    return Scaffold(
      backgroundColor: lightGrey,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          AppBarWidget(),
          SliverToBoxAdapter(
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
                        args.listing.title,
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 22.0,
                      ),
                      Text(
                        args.listing.price,
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
                            args.listing.location,
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
          ),
          SliverFillRemaining(),
        ],
      ),
    );
  }
}
