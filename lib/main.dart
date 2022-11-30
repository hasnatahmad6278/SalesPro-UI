import 'package:flutter/material.dart';
import 'package:salespro/pages/mainbottom.dart';
import 'package:salespro/pages/splashpage.dart';


import 'pages/onbaording1.dart';
 void main(){
   runApp(onboarding());
 }
  class onboarding extends StatelessWidget {

    const onboarding({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splashsreen(),
      );
    }
  }
