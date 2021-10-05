import 'package:gumtree_motors/feature/home/domain/recent_search.dart';

class RecentSearchesRepository {
  static List<RecentSearch> getRecentSearches() => const [
        RecentSearch(
          'https://www.gannett-cdn.com/media/2019/04/25/USATODAY/usatsports/247WallSt.com-247WS-543507-ms.jpg?crop=1365,768,x0,y0&width=660&height=372&format=pjpg&auto=webp',
          'Cars',
        ),
        RecentSearch(
          'https://blogsmedia.lse.ac.uk/blogs.dir/30/files/2020/12/LSE-blog-editors-2020-image-2.png',
          'Books',
        ),
        RecentSearch(
          'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg',
          'Dogs',
        ),
        RecentSearch(
          'https://pbs.twimg.com/profile_images/1080545769034108928/CEzHCTpI_400x400.jpg',
          'Cats',
        ),
      ];
}
