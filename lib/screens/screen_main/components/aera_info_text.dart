import 'package:flutter/material.dart';
import 'package:cfiguin_portfolio/utils/constants.dart';

class InfoTextArea extends StatelessWidget {
  const InfoTextArea({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: Constants.padding / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title!,
              style: TextStyle(
                  color: Constants.primaryColor, fontWeight: FontWeight.bold),
            ),
            Text(text!)
          ],
        ));
  }
}
