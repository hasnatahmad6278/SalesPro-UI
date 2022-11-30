import 'package:flutter/material.dart';
import 'package:salespro/pages/Report/Reportfile.dart';
class salesreport extends StatefulWidget {
  const salesreport({Key? key}) : super(key: key);

  @override
  State<salesreport> createState() => _salesreportState();
}

class _salesreportState extends State<salesreport> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => reportfile()));
          },
        ),
        title: Center(child: Text("Sales Report",style: TextStyle(color: Colors.black))),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Product"),
            Text("Category"),
            Text("QTY"),
            Text("Price"),
          ],
        ),
      ),
    );
  }
}
