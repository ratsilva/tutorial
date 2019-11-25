import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:tutorial/tutorial.dart';
import 'package:tutorial/strings.dart';

class Tutorial2State extends StatelessWidget {
  final Widget dots;
  final IndexController controller;
  Tutorial2State(this.dots, this.controller);
  @override
  Widget build(BuildContext context) {

    return Column(children: [
          Header(),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ImageView('assets/images/tutorial2.png')
          ),
          dots,
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Tutorial2Content(controller)
          )
      ]);
  }

}

class Tutorial2Content extends StatelessWidget {
  final IndexController controller;
  Tutorial2Content(this.controller);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 85, right: 85, bottom: 16),
          child: MessageText(Strings.tutorial2Title)
        ),
        Padding(
          padding: EdgeInsets.only(left: 60, right: 60, bottom: 60),
          child: DescriptionText(Strings.tutorial2Message)
        ),
        Button2View(Strings.tutorial2Button, 2, controller)
      ]
    );
  }

}