import 'package:flutter/material.dart';


import '../Dashboard.dart';
import '../shopping/saleshopping.dart';

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
            Navigator.push(context, MaterialPageRoute(builder: (context) => dashbaord()));
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
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 30,right: 30),
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
        ],
      ),
    );
  }
}
