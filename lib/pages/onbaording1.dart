import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:salespro/pages/userpage.dart';
class boardingscreen1 extends StatefulWidget {
  const boardingscreen1({Key? key}) : super(key: key);

  @override
  State<boardingscreen1> createState() => _boardingscreen1State();
}

class _boardingscreen1State extends State<boardingscreen1> {
  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Easy to Use mobile Pos",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          image: buildImage('assets/images/beta.png'),
          decoration: getPageDecoration(),


        ),
        PageViewModel(
          title: "Chose your Features",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          image: buildImage('assets/images/boymobile.png'),
          decoration: getPageDecoration(),


        ),
        PageViewModel(
          title: "All Business Solutions",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          image: buildImage('assets/images/girslmobile.png'),
          decoration: getPageDecoration(),


        ),


      ],
      done: Text('Continue', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text('Skip'),
      onSkip: () => goToHome(context),
      next: Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => print('Page $index selected'),
      globalBackgroundColor:Colors.white,
      nextFlex: 0,

      // isProgressTap: false,
      // isProgress: false,
      // showNextButton: true,
      // freeze: true,
      // animationDuration: 1000,
    ),


  );
  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => userpage()),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    //activeColor: Colors.orange,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 15),

    imagePadding: EdgeInsets.all(24),
    pageColor: Colors.white,
  );

}
