import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';
import 'package:gumtree_motors/feature/home_screen/domain/listing_repository.dart';
import 'package:gumtree_motors/feature/home_screen/domain/recent_searches_repository.dart';
import 'package:gumtree_motors/feature/home_screen/presentation/widgets/listing_subtitle_row.dart';

import 'ad_banner.dart';
import 'icon_bar.dart';
import 'listing_grid.dart';
import 'recent_searches_row.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recentSearches = RecentSearchesRepository.getRecentSearches();

    return Expanded(
      child: Container(
        color: lightGrey,
        child: RefreshIndicator(
          backgroundColor: darkGreen,
          color: lightGreen,
          edgeOffset: 94.0,
          displacement: 0.0,
          strokeWidth: 3.0,
          onRefresh: () {
            // TODO: When state mgmt set up. Trigger a reload of items.
            return Future.delayed(Duration(seconds: 2));
          },
          child: CustomScrollView(
            slivers: [
              SliverIconBar(),
              ListingSubtitleRow(
                leadingText: 'Just for you',
                trailingText: 'United Kingdom',
              ),
              ListingGrid(
                listings: ListingRepository.getListings(size: 4),
              ),
              ListingSubtitleRow(leadingText: 'Your Recent Searches'),
              RecentSearchesRow(recentSearches: recentSearches),
              ListingGrid(
                listings: ListingRepository.getListings(size: 6),
              ),
              AdBanner(),
              ListingGrid(
                listings: ListingRepository.getListings(size: 20),
              ),
              AdBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
