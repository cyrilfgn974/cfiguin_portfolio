import 'package:flutter/material.dart';

import 'package:cfiguin_portfolio/utils/constants.dart';
import 'package:cfiguin_portfolio/utils/strings.dart';
import 'package:cfiguin_portfolio/utils/responsive.dart';

class HomePageComponent extends StatelessWidget {
  const HomePageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "./assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: Constants.darkColor.withOpacity(0.5),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Constants.padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.headerTitle,
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline1!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Constants.primaryColor,
                          )
                      : Theme.of(context).textTheme.headline2!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Constants.primaryColor,
                          ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
