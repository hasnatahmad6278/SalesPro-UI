import 'package:flutter/material.dart';
import 'package:salespro/pages/shopping/Salespage.dart';
import 'package:salespro/pages/shopping/categoriespage.dart';
import 'package:salespro/pages/shopping/saleshopping.dart';

import '../Dashboard.dart';
import '../mainbottom.dart';
import 'Addfashionpage.dart';

class salesdetails extends StatefulWidget {
  const salesdetails({Key? key}) : super(key: key);

  @override
  State<salesdetails> createState() => _salesdetailsState();
}

class _salesdetailsState extends State<salesdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>PMbottom()));
          },
        ),
        title: Center(child: Text("Sales Deatils",style: TextStyle(color: Colors.black))),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.person_add_alt_1,color: Colors.black),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child:  IconButton(onPressed: (){

            }, icon:PopupMenuButton(

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              color: Colors.white,
              itemBuilder:(context) => [
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.add,color: Colors.black),
                    Text("Add Product"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.list_alt,color: Colors.black),
                    Text("Stock List"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.list_alt_outlined,color: Colors.black),
                    Text("Sale List"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.person_add,color: Colors.black),
                    Text("Sales List"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.person,color: Colors.black),
                    Text("Contact List"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.list,color: Colors.black),
                    Text("Due List"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.play_circle_outline,color: Colors.black),
                    Text("How to Play"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),

              ],
              child: Icon(Icons.more_vert,
                color: Colors.black,

              ),
            )),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: 70,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(10),

                 ),

                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Icon(Icons.shop,color: Colors.white),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: Text("Total:\$Cart is\n Empty",style: TextStyle(
                             color: Colors.white,
                             fontSize: 16,
                           )),
                         ),
                       ],

                     ),
                     Padding(
                       padding: const EdgeInsets.only(right: 20),
                       child: InkWell(
                         child: Icon(Icons.arrow_forward,color: Colors.white,),
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => saless()));
                         },
                       ),
                     ),

                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     width: 200,
                     height: 50,
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.black),
                       borderRadius: BorderRadius.circular(5),
                       color:   Colors.blue.withOpacity(0.1),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.only(left: 10,right: 10),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Laptop"),
                             InkWell(
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>categories()));
                                 },
                                 child: Icon(Icons.keyboard_arrow_down)),
                         ],
                       ),
                     )
                   ),
                   Container(
                     width: 100,
                     height: 50,
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.black),
                       color:   Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5)
                     ),
                     child: InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>addfashion()));
                       },
                         child: Icon(Icons.add)),
                   ),

                 ],
               ),
             ),
           ],
         ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => saless()));
                      }, child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Text("Sales List",style: TextStyle(fontSize: 18)),
                        Icon(Icons.arrow_forward),
                      ]),style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
                      )),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
