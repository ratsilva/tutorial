import 'package:flutter/material.dart';
import 'package:tutorial/tutorial.dart';
import 'package:tutorial/strings.dart';

class Tutorial1State extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(children: [
          Header(),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ImageView('assets/images/tutorial1.png')
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Tutorial1Content()
          )
      ]);
  }

}

class Tutorial1Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 85, right: 85, bottom: 16),
          child: MessageText(Strings.tutorial1Title)
        ),
        Padding(
          padding: EdgeInsets.only(left: 60, right: 60, bottom: 60),
          child: DescriptionText(Strings.tutorial1Message)
        ),
        ButtonView(Strings.tutorial1Button)
      ]
    );
  }

}