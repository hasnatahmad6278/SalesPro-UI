import 'package:flutter/material.dart';
import 'package:salespro/pages/shopping/Salespage.dart';
import 'package:salespro/pages/stock/stockpage.dart';

import '../Dashboard.dart';
import '../Product/addproduct.dart';
import '../mainbottom.dart';

class calculator extends StatefulWidget {


  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    controller;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
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
        title: Text("Calculator",style: TextStyle(color: Colors.black)),
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
                PopupMenuItem(child:
                Row(

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
      body: ListView(
        children: [
          Column(

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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => sales()));
                        },
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.blue.withOpacity(0.1),
                          filled: true,
                          hintText: "Product...",
                          label: Text("Product Name",style: TextStyle(
                              decoration: TextDecoration.none,
                            fontSize: 13,


                          )),
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      child: TextFormField(
                        controller: controller,
                        decoration: InputDecoration(
                          fillColor: Colors.blue.withOpacity(0.1),
                          filled: true,
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(

                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: (){
                                  insert("7");
                                },
                                child: Text("7",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("8",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("9",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: (){

                                },
                                child: Text("C",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),




                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("4",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("5",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("6",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("*",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),




                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("2",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("3",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("+",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),




                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text(".",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("0",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("%",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(

                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                            child: Center(
                              child: GestureDetector(
                                child: Text("=",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),

                              ),
                            ),
                          ),




                        ],
                      ),
                    ),


                  ],
                ),
              )

            ],
          ),
        ],

      ),
    );
  }
  void insert(String content) {
    var text = controller.text;
    var pos = controller.selection.start;
    controller.value = TextEditingValue(
      text: text.substring(0, pos) + content + text.substring(pos),
      selection: TextSelection.collapsed(offset: pos + content.length),
    );
  }
}
