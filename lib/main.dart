import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'tutorialScreens/tutorial1.dart';
import 'tutorialScreens/tutorial2.dart';
import 'tutorialScreens/tutorial3.dart';

void main() => runApp(TutorialApp());

class TutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: Strings.appTitle,
    //   theme: ThemeData(),
    //   home: Tutorial()
    // );
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({this.title});
  
  @override
  MyHomePageState createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _slideIndex = 0;
  int _MAX_SCREENS = 3;

  final IndexController controller = IndexController();

  @override
  Widget build(BuildContext context) {

    TransformerPageView transformerPageView = TransformerPageView(
      pageSnapping: true,
      onPageChanged: (index) {
        setState(() {
          this._slideIndex = index;
        });
      },
      loop: false,
      controller: controller,
      transformer: PageTransformerBuilder(
        builder: (Widget child, TransformInfo info) {
          return Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [ 
                getScreen(info.index)
              ]
            )
          );
        }
      ),
      itemCount: _MAX_SCREENS
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: transformerPageView,
    );

  }

  Widget getScreen(int i){
    Widget dots = Padding(
      padding: EdgeInsets.only(top: 25),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < _MAX_SCREENS; i++) circleBar(i)
          ]
        )
      )
    );

      switch (i) {
        case 0:
          return Tutorial1State(dots);
        case 1:
          return Tutorial2State(dots);
        case 2:
          return Tutorial3State(dots);
        default:
          return null;
      }

  }

  Widget circleBar(int i) {

    bool isActive;

    if (i == _slideIndex) isActive = true;
    else isActive = false;

    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          color: isActive ? Color(0XFFEC7000) : Color(0XFF4A4A4A),
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}