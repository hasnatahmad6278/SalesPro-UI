import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../mainbottom.dart';
class myexpense extends StatefulWidget {
  const myexpense({Key? key}) : super(key: key);

  @override
  State<myexpense> createState() => _myexpenseState();
}

class _myexpenseState extends State<myexpense> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
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
        title: Center(child: Text("Expense",style: TextStyle(color: Colors.black))),
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
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 150,
                  height: MediaQuery.of(context).size.width / 3,
                  child: Center(
                      child: TextField(
                        controller: dateInput,
                        //editing controller of this TextField
                        decoration: InputDecoration(
                          //icon of text field
                            labelText: "Enter Date" ,
                            border: OutlineInputBorder(

                            )
                          //label text of field
                        ),
                        readOnly: true,
                        //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2100));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            setState(() {
                              dateInput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {}
                        },
                      ))),
              Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 150,
                  height: MediaQuery.of(context).size.width / 3,
                  child: Center(
                      child: TextField(
                        controller: dateInput,
                        //editing controller of this TextField
                        decoration: InputDecoration(
                          //icon of text field
                            labelText: "End Date" ,
                            border: OutlineInputBorder(

                            )
                          //label text of field
                        ),
                        readOnly: true,
                        //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2100));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            setState(() {
                              dateInput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {}
                        },
                      ))),

            ],
          ),
          Column(
            children: [
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Name"),
                    Text("Debit"),
                    Text("Credit"),
                    Text("Balance"),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Ahsan"),
                    Text("25"),
                    Text("25"),
                    Text("50"),
                  ],
                ),
              ),
            ],
          ),


          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Total:"),
                  Text("800"),
                  Text("500"),
                  Text("900"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10,top: 20),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: ElevatedButton(onPressed: (){}, child: Text("Add Expense"),)),
          ),

        ],
      ),
    );
  }
}
