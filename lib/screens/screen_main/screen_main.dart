//flutter packages
import 'package:flutter/material.dart';

import 'package:cfiguin_portfolio/screens/screen_main/components/side_menu.dart';

//utils
import 'package:cfiguin_portfolio/utils/responsive.dart';
import 'package:cfiguin_portfolio/utils/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //if on desktop : no menubar
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Constants.backgroundColor,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu)),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
            constraints: BoxConstraints(maxWidth: Constants.maxWidth),
            padding: EdgeInsets.all(Constants.padding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(flex: 2, child: SideMenu()),
                SizedBox(width: Constants.padding),
                Expanded(
                    flex: 7,
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        ...children,
                      ],
                    )))
              ],
            )),
      ),
    );
  }
}
