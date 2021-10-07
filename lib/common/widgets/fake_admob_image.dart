import 'package:flutter/material.dart';

class FakeAdmobImage extends StatelessWidget {
  const FakeAdmobImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/admob_logo.png',
      fit: BoxFit.contain,
    );
  }
}
