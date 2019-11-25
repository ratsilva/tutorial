import 'package:flutter/material.dart';
import 'package:tutorial/tutorial.dart';
import 'package:tutorial/strings.dart';

class Tutorial4State extends StatelessWidget {
  final Widget dots;
  Tutorial4State(this.dots);
  @override
  Widget build(BuildContext context) {

    return Column(children: [
          Header(),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ImageView('assets/images/tutorial4.png')
          ),
          dots,
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Tutorial4Content()
          )
      ]);
  }

}

class Tutorial4Content extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 85, right: 85, bottom: 16),
          child: MessageText(Strings.tutorial4Title)
        ),
        Padding(
          padding: EdgeInsets.only(left: 60, right: 60, bottom: 60),
          child: DescriptionText(Strings.tutorial4Message)
        ),
        ButtonView(Strings.tutorial4Button)
      ]
    );
  }

}