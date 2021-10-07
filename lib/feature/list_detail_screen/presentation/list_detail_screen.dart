import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';
import 'package:gumtree_motors/common/widgets/fake_admob_image.dart';
import 'package:gumtree_motors/feature/list_detail_screen/list_detail_screen_arguments.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/image_gallery_app_bar.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_bottom_bar/listing_bottom_bar_chat.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_bottom_bar/listing_bottom_bar_container.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_expandable_section.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_header_section.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_user_section.dart';

class ListDetailScreen extends StatelessWidget {
  const ListDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListDetailScreenArguments args =
        ModalRoute.of(context)!.settings.arguments as ListDetailScreenArguments;

    return Scaffold(
      backgroundColor: lightGrey,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              scrollDirection: Axis.vertical,
              slivers: [
                ImageGalleryAppBar(),
                ListingDetailHeaderSection(args: args),
                ListingDetailUserSection(),
                ListingDetailExpandableSection(
                  title: 'Looking for car finance?',
                  expandedStateChild: FakeAdmobImage(),
                  padding: EdgeInsets.zero,
                ),
                ListingDetailExpandableSection(
                  title: 'Get insurance quote',
                  expandedStateChild: FakeAdmobImage(),
                  margin: EdgeInsets.only(top: 0.0),
                  padding: EdgeInsets.zero,
                ),
                SliverFillRemaining(),
              ],
            ),
          ),
          ListingBottomBarContainer(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListingBottomBarChat(),
            ),
          ),
        ],
      ),
    );
  }
}
