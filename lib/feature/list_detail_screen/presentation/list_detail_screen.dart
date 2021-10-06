import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/list_detail_screen/list_detail_screen_arguments.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/app_bar_gallery.dart';

class ListDetailScreen extends StatelessWidget {
  const ListDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListDetailScreenArguments args =
        ModalRoute.of(context)!.settings.arguments as ListDetailScreenArguments;

    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          AppBarWidget(),
          // SliverFixedExtentList(
          //   itemExtent: 110,
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) => Padding(
          //       padding: const EdgeInsets.only(bottom: 20),
          //       // 7
          //       child: Container(
          //         width: 50.0,
          //         height: 50.0,
          //         color: Colors.red,
          //         margin: EdgeInsets.all(10.0),
          //       ),
          //     ),
          //     childCount: 3,
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
          SliverFillRemaining()
        ],
      ),
    );
  }
}
