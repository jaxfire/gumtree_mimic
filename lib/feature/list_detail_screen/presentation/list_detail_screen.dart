import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/colours.dart';
import 'package:gumtree_motors/feature/list_detail_screen/list_detail_screen_arguments.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/app_bar_gallery.dart';
import 'package:gumtree_motors/feature/splash_screen/presentation/widgets/gumtree_icon.dart';

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
                ListingDetailUserSection(),
                SliverFillRemaining(),
              ],
            ),
          ),
          ListingBottomBarContainer(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: lightPink,
                    size: 28.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Hi, is this still available?',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 44.0,
                    width: 44.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Icon(
                        Icons.send_rounded,
                        color: Colors.white,
                        size: 28.0,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: lightPink,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListingBottomBarContainer extends StatelessWidget {
  final Widget? child;

  const ListingBottomBarContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ),
      child: child,
    );
  }
}

class ListingDetailUserSection extends StatelessWidget {
  const ListingDetailUserSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListingDetailCard(
      cardChild: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Icon(
              Icons.perm_identity_rounded,
              color: Colors.black87,
            ),
            backgroundColor: Colors.grey.shade400,
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Gumtree user',
                        style: TextStyle(color: Colors.blue, fontSize: 15.0),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        '(1 ad)',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 16.0,
                      )
                    ],
                  ),
                ),
                PaddedDivider(
                  colour: Colors.grey,
                  padding: EdgeInsets.symmetric(vertical: 6.0),
                ),
                ListingUserInfoRow(
                  leading: GumtreeIcon(
                    colour: Colors.black87,
                    size: 22.0,
                  ),
                  text: 'Posting for less than a month',
                ),
                ListingUserInfoRow(
                  leading: Icon(Icons.access_time_rounded),
                  text: 'Replies in about 3 hours',
                ),
                ListingUserInfoRow(
                  leading: Icon(Icons.message_rounded),
                  text: 'Response rate 86%',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PaddedDivider extends StatelessWidget {
  final Color colour;
  final double height;
  final double endIndent;
  final EdgeInsetsGeometry padding;

  const PaddedDivider(
      {Key? key,
      required this.colour,
      this.height = 2.0,
      this.endIndent = 0.0,
      required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Divider(
        color: colour,
        height: 2.0,
        endIndent: 4.0,
      ),
    );
  }
}

class ListingUserInfoRow extends StatelessWidget {
  final Widget leading;
  final String text;

  const ListingUserInfoRow({
    Key? key,
    required this.leading,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0),
      child: Row(
        children: [
          leading,
          SizedBox(
            width: 6.0,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class ListingDetailCard extends StatelessWidget {
  final Widget cardChild;

  const ListingDetailCard({Key? key, required this.cardChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 8.0),
        padding: EdgeInsets.all(18.0),
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
        child: cardChild,
      ),
    );
  }
}
