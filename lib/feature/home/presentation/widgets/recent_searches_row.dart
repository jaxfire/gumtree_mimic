import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home/domain/recent_search.dart';

class RecentSearchesRow extends StatelessWidget {
  final List<RecentSearch> recentSearches;
  const RecentSearchesRow({Key? key, required this.recentSearches})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: 5,
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          // 7
          child: RecentSearchListItem(
            recentSearch: recentSearches[index],
          ),
        ),
        childCount: recentSearches.length,
      ),
    );
  }
}

class RecentSearchListItem extends StatelessWidget {
  final RecentSearch recentSearch;

  const RecentSearchListItem({Key? key, required this.recentSearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    );
  }
}
