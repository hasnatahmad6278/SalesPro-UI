import 'package:flutter/material.dart';
import 'package:salespro/pages/Dashboard.dart';

import '../mainbottom.dart';
class stocklist extends StatefulWidget {
  const stocklist({Key? key}) : super(key: key);

  @override
  State<stocklist> createState() => _stocklistState();
}

class _stocklistState extends State<stocklist> {
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
       title: Text("Stock List",style: TextStyle(color: Colors.black)),
       elevation: 0,
       backgroundColor: Colors.white,

     ),
       body:Column(
         children: [
           Container(
             height: 30,
             color: Colors.grey,
             child: Padding(
               padding: const EdgeInsets.only(left: 30),
               child: Center(
                 child: Table(
                   children: [
                     TableRow(
                       children: [
                         Text("Prdouct"),
                         Text("Category"),
                         Text("Qty"),
                         Text("Price")
                       ]
                     ),
                   ],
                 ),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 30,top: 20),
             child: Table(
               children: [
                 TableRow(
                     children: [
                       Text("Mobile"),
                       Text("Electronics"),
                       Text("23"),
                       Text("2300000")
                     ]
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 30,top: 20),
             child: Table(
               children: [
                 TableRow(
                     children: [
                       Text("Laptop"),
                       Text("Electronics"),
                       Text("2"),
                       Text("2300000")
                     ]
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 30,top: 20),
             child: Table(
               children: [
                 TableRow(
                     children: [
                       Text("Tab"),
                       Text("Electronics"),
                       Text("2"),
                       Text("150000")
                     ]
                 ),
               ],
             ),
           ),
         ],
       )
    );
  }
}
