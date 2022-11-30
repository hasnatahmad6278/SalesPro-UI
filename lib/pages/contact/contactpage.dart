import 'package:flutter/material.dart';
import 'package:salespro/pages/contact/contactaddlist.dart';
import 'package:salespro/pages/contact/contactinformation.dart';

import '../Dashboard.dart';
import '../mainbottom.dart';
class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => PMbottom()));
          },
        ),
        title: Center(child: Text("Contact",style: TextStyle(color: Colors.black))),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>contactinformation()));
                }, child: Text("Add Contact",style: TextStyle(

                ),))),
          )
        ],
      ),
    );
  }
}
