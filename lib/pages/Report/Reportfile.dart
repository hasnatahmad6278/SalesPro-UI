import 'package:flutter/material.dart';
import 'package:salespro/pages/Report/Reportsales.dart';
import 'package:salespro/pages/Report/salesreport.dart';

import '../Dashboard.dart';
import '../mainbottom.dart';
class reportfile extends StatefulWidget {
  const reportfile({Key? key}) : super(key: key);

  @override
  State<reportfile> createState() => _reportfileState();
}

class _reportfileState extends State<reportfile> {
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
        title: Text("Report",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => reportsale()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,

               decoration: BoxDecoration(
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.3),
                     spreadRadius: 7,
                     blurRadius: 5,
                     offset: Offset(0,3)
                   )
                 ],
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                     children: [
                       Image.asset("assets/images/purchase.png"),
                       Text("Purchase Report"),
                     ],
                   ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => salesreport()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 7,
                        blurRadius: 5,
                        offset: Offset(0,3)
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/shopping.png"),
                        Text("Sales Report"),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
