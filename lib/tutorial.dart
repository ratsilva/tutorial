import 'package:flutter/material.dart';
import 'tutorialScreens/tutorial1.dart';
import 'strings.dart';

class Tutorial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return null;
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Visibility(
            visible: false, 
            maintainSize: true, 
            maintainAnimation: true,
            maintainState: true, 
            child: IconButton(icon: Icon(Icons.keyboard_arrow_down, color: Color(0XFFEC7000)), onPressed: () {})
          ),
          Expanded(child: TitleText(Strings.tutorialHeader)),
          IconButton(icon: Icon(Icons.keyboard_arrow_down, color: Color(0XFFEC7000)), onPressed: () {
            print("Cliquei");
          })
      ],
    );
  }
}

class TitleText extends StatelessWidget {
  final String text;
  TitleText(this.text);
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text, style: TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color(0XFFEC7000))
    ));
  }
}

class MessageText extends StatelessWidget {
  final String text;
  MessageText(this.text);
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text, textAlign: TextAlign.center, style: TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Color(0XFF4A4A4A))
    ));
  }
}

class DescriptionText extends StatelessWidget {
  final String text;
  DescriptionText(this.text);
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text, textAlign: TextAlign.center, style: TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0XFF4A4A4A))
    ));
  }
}

class ImageView extends StatelessWidget {
  final String imagePath;
  ImageView(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 45, right: 45),
      child: Image.asset(imagePath),
    );
  }
}

class ButtonView extends StatelessWidget {
  final String text;
  ButtonView(this.text);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        height: 60,
        minWidth: 370,
        padding: EdgeInsets.symmetric(vertical: 19),
        child: Text(text.toUpperCase()), 
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: Color(0XFFEC7000),
        textColor: Colors.white,
        colorBrightness: Brightness.dark,
        onPressed: () { 
          print("Cliquei no botão");
        },),
    );
  }
}