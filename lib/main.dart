//flutter packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//internal packages
import 'package:cfiguin_portfolio/screens/screen_home/screen_home.dart';

//utils
import 'package:cfiguin_portfolio/utils/strings.dart';
import 'package:cfiguin_portfolio/utils/constants.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.portfolioTitle,
      // we are using dark theme and we modify it as our need
      theme: ThemeData.dark().copyWith(
        primaryColor: Constants.primaryColor,
        scaffoldBackgroundColor: Constants.backgroundColor,
        canvasColor: Constants.backgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: Constants.bodyColor),
              bodyText2: TextStyle(color: Constants.bodyColor),
            ),
      ),
      home: HomePage(),
    );
  }
}
