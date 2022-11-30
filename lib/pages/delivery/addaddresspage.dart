import 'package:flutter/material.dart';
import 'package:salespro/pages/Dashboard.dart';
import 'package:salespro/pages/delivery/newaddresspage.dart';

import '../mainbottom.dart';
class addaddress extends StatefulWidget {
  const addaddress({Key? key}) : super(key: key);

  @override
  State<addaddress> createState() => _addaddressState();
}

class _addaddressState extends State<addaddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => PMbottom()));
          },
        ),
        title: Text("Delivery Address",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                  ),
                  height: 60,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => newaddressadd()));
                  }, child: Text("Add Address"),style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
                  )),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
