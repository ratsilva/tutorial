import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:tutorial/tutorial.dart';
import 'package:tutorial/strings.dart';

class Tutorial1State extends StatelessWidget {
  final Widget dots;
  final IndexController controller;
  Tutorial1State(this.dots, this.controller);
  @override
  Widget build(BuildContext context) {

    return Column(children: [
          Header(),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ImageView('assets/images/tutorial1.png')
          ),
          dots,
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Tutorial1Content(controller)
          )
      ]);
  }

}

class Tutorial1Content extends StatelessWidget {
  final IndexController controller;
  Tutorial1Content(this.controller);
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
        Button2View(Strings.tutorial1Button, 1, controller)
      ]
    );
  }

}