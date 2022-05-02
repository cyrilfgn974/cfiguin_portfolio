import 'package:flutter/material.dart';

import 'package:cfiguin_portfolio/screens/screen_home/components/homepage.dart';
import 'package:cfiguin_portfolio/screens/screen_main/screen_main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [HomePageComponent()]);
  }
}
