import 'dart:async';

import 'package:flutter/material.dart';
import 'package:salespro/main.dart';

import 'onbaording1.dart';
class splashsreen extends StatefulWidget {
  const splashsreen({Key? key}) : super(key: key);

  @override
  State<splashsreen> createState() => _splashsreenState();
}

class _splashsreenState extends State<splashsreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration (seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>boardingscreen1()
      ));
    });
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Container(
              width: 200,
                height:200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white
                ),
                child: Image.asset("assets/images/splashimage.png")),
          ),

        ],
      ),
    );
  }
}
