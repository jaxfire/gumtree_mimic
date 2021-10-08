import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';
import 'package:gumtree_motors/common/widgets/fake_admob_image.dart';
import 'package:gumtree_motors/feature/home_screen/domain/listing.dart';
import 'package:gumtree_motors/feature/list_detail_screen/list_detail_screen_arguments.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/image_gallery_app_bar.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_bottom_bar/listing_bottom_bar_chat.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_bottom_bar/listing_bottom_bar_container.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_expandable_section.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_header_section.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_tab_content.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_tab_header.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_user_section.dart';

// TODO: Use Bloc for state of Tabs instead of StatefulWidget
class ListDetailScreen extends StatefulWidget {
  const ListDetailScreen({Key? key}) : super(key: key);

  @override
  State<ListDetailScreen> createState() => _ListDetailScreenState();
}

class _ListDetailScreenState extends State<ListDetailScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    Listing listing = (ModalRoute.of(context)!.settings.arguments
            as ListDetailScreenArguments)
        .listing;

    return DefaultTabController(
      length: getTabLength(listing),
      child: Builder(
        builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              setState(() {
                selectedTabIndex = tabController.index;
              });
            }
          });
          return Scaffold(
            backgroundColor: lightGrey,
            body: Column(
              children: [
                Expanded(
                  child: CustomScrollView(
                    scrollDirection: Axis.vertical,
                    slivers: [
                      ImageGalleryAppBar(),
                      ListingDetailHeaderSection(listing: listing),
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
                      ListingDetailTabHeader(listing: listing),
                      ListingDetailTabContent(
                        listing: listing,
                        selectedTabIndex: selectedTabIndex,
                        margin: EdgeInsets.zero,
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
        },
      ),
    );
  }

  int getTabLength(Listing listing) {
    int numOfTabs = 1; // We will always have summary

    if (listing.description.specs != null) {
      numOfTabs++;
    }

    if (listing.description.features != null) {
      numOfTabs++;
    }
    return numOfTabs;
  }
}
