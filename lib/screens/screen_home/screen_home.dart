import 'package:flutter/material.dart';

import 'package:cfiguin_portfolio/screens/screen_home/components/homepage.dart';
import 'package:cfiguin_portfolio/screens/screen_home/components/project_view.dart';
import 'package:cfiguin_portfolio/screens/screen_main/screen_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [HomePageComponent(), MyProjects()]);
  }
}
