import 'package:flutter/material.dart';
import 'package:gumtree_motors/common/widgets/fake_admob_image.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 20.0),
        child: SizedBox(
          height: 200.0,
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                fit: StackFit.passthrough,
                children: [
                  FakeAdmobImage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
