import 'package:flutter/material.dart';

import 'package:cfiguin_portfolio/screens/screen_main/components/drawer_header.dart';

import 'package:cfiguin_portfolio/utils/constants.dart';
import 'package:cfiguin_portfolio/screens/screen_main/components/aera_info_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(children: [
          DrawHeader(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(Constants.padding / 2),
            child: Column(
              children: [
                InfoTextArea(
                  title: "Localisation",
                  text: "Toulouse (France)",
                ),
                InfoTextArea(
                  title: "Age",
                  text: "22",
                ),
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
