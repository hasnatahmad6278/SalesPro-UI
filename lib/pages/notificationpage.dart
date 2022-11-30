import 'package:flutter/material.dart';
import 'package:salespro/pages/Dashboard.dart';

import 'mainbottom.dart';
class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
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
        title: Text("Notification",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 7,
                    spreadRadius: 2,
                    offset: Offset(0,3)

                  )
                ]
              ),
              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),


                  ),
                    child: Icon(Icons.alarm,color: Colors.orange)),
                title:Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text("Purchase Alarm",style: TextStyle(
                    fontSize: 16,
                  )),
                ),
                subtitle: Text("Lorem ipsum is a placeholder text commonly used to demonstrate .",style: TextStyle(
                  fontSize: 12,
                )),
                trailing: Text("June 23,2021"),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 7,
                    spreadRadius: 2,
                    offset: Offset(0,3)

                  )
                ]
              ),
              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.indigo.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),


                  ),
                    child: Icon(Icons.notifications,color: Colors.indigoAccent)),
                title:Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text("Purchase Confirmed",style: TextStyle(
                    fontSize: 16,
                  )),
                ),
                subtitle: Text("Lorem ipsum is a placeholder text commonly used to demonstrate .",style: TextStyle(
                  fontSize: 12,
                )),
                trailing: Text("June 23,2021"),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
