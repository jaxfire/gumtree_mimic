import 'package:flutter/material.dart';
import 'package:gumtree_motors/feature/list_detail_screen/list_detail_screen_arguments.dart';

class ListDetailScreen extends StatelessWidget {
  const ListDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ListDetailScreenArguments.

    ListDetailScreenArguments? args;
    if (ModalRoute.of(context)!.settings.arguments != null) {
      args = ModalRoute.of(context)!.settings.arguments
          as ListDetailScreenArguments;
    }

    return Scaffold(
      body: (args == null) ? buildInvalidArgs() : buildScreen(args),
    );
  }

  @override
  String toStringShort() {}

  Widget buildInvalidArgs() {
    return Center(
      child: Text('Invalid Args'),
    );
  }

  Widget buildScreen(ListDetailScreenArguments args) {
    return Center(
      child: Column(
        children: [
          Text(
            args.listing.userName,
          ),
          Text(
            args.listing.title,
          ),
          Text(
            args.listing.price,
          ),
          Text(
            args.listing.location,
          ),
          Text(
            args.listing.description,
          ),
        ],
      ),
    );
  }
}
