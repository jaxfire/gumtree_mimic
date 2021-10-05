import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/home/domain/recent_search.dart';

class RecentSearchesRow extends StatelessWidget {
  final List<RecentSearch> recentSearches;

  const RecentSearchesRow({Key? key, required this.recentSearches})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: SizedBox(
          height: 100.0,
          child: ListView(
            shrinkWrap: true,
            itemExtent: 108.0,
            scrollDirection: Axis.horizontal,
            children: recentSearches.map((item) {
              return RecentSearchListItem(recentSearch: item);
            }).toList(),
          ),
        ),
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
      margin: EdgeInsets.only(left: 8.0),
      width: 100.0,
      height: 100.0,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            recentSearch.image,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.4, 1.0],
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0, left: 4.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                recentSearch.searchTerm,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
