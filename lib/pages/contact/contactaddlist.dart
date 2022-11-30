import 'package:flutter/material.dart';

import 'contactpage.dart';
class contactlistadd extends StatefulWidget {
  const contactlistadd({Key? key}) : super(key: key);

  @override
  State<contactlistadd> createState() => _contactlistaddState();
}

class _contactlistaddState extends State<contactlistadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => contact()));
          },
        ),
        title: Text("Contact List",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
Widget ahsan(Color clr){
  return
  Container(
  color: clr,

  );
}