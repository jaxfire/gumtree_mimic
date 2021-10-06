import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';
import 'package:gumtree_motors/feature/home_screen/presentation/widgets/home_bottom_button_bar.dart';
import 'package:gumtree_motors/feature/home_screen/presentation/widgets/home_search_bar.dart';

import 'widgets/home_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkPink,
      body: SafeArea(
        child: Column(
          children: [
            HomeSearchBar(),
            HomeListView(),
            HomeBottomButtonBar(),
          ],
        ),
      ),
    );
  }
}
