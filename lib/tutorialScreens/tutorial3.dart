import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:tutorial/tutorial.dart';
import 'package:tutorial/strings.dart';

class Tutorial3State extends StatelessWidget {
  final Widget dots;
  final IndexController controller;
  Tutorial3State(this.dots, this.controller);
  @override
  Widget build(BuildContext context) {

    return Column(children: [
          Header(),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ImageView('assets/images/tutorial3.png')
          ),
          dots,
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Tutorial3Content(controller)
          )
      ]);
  }

}

class Tutorial3Content extends StatelessWidget {
  final IndexController controller;
  Tutorial3Content(this.controller);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 85, right: 85, bottom: 16),
          child: MessageText(Strings.tutorial3Title)
        ),
        Padding(
          padding: EdgeInsets.only(left: 60, right: 60, bottom: 60),
          child: DescriptionText(Strings.tutorial3Message)
        ),
        Button2View(Strings.tutorial3Button, 3, controller)
      ]
    );
  }

}