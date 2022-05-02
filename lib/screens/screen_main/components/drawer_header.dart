import 'package:flutter/material.dart';

import 'package:cfiguin_portfolio/utils/constants.dart';
import 'package:cfiguin_portfolio/utils/responsive.dart';
import 'package:cfiguin_portfolio/utils/strings.dart';

class DrawHeader extends StatelessWidget {
  const DrawHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        color: Constants.drawerHeaderBg,
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: ExactAssetImage("images/pdp.jpeg"),
            ),
            Spacer(flex: 1),
            Text(
              Strings.headerTitle,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(Strings.headerSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
