import 'package:flutter/material.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'tutorialScreens/tutorial1.dart';
import 'tutorialScreens/tutorial2.dart';
import 'strings.dart';
import 'tutorial.dart';

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

  final List<Widget> screens = [
    Tutorial1State(),
    Tutorial2State()
  ];

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
              children: [ screens[info.index] ]
            )
          );
        }
      ),
      itemCount: 2
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: transformerPageView,
    );

  }
}