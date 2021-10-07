import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/widgets/padded_divider.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_card.dart';
import 'package:gumtree_motors/feature/list_detail_screen/presentation/widgets/listing_detail_user_info_row.dart';
import 'package:gumtree_motors/feature/splash_screen/presentation/widgets/gumtree_icon.dart';

class ListingDetailUserSection extends StatelessWidget {
  const ListingDetailUserSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListingDetailCard(
      child: Row(
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
                  endIndent: 4.0,
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
