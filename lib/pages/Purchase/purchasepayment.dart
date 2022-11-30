import 'package:circle_checkbox/redev_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:salespro/pages/Purchase/purchaseinvoice.dart';

import 'completepurchase.dart';
class purchasepayment extends StatefulWidget {
  const purchasepayment({Key? key}) : super(key: key);

  @override
  State<purchasepayment> createState() => _purchasepaymentState();
}

class _purchasepaymentState extends State<purchasepayment> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => purchaseinvoice()));
          },
        ),
        title: Center(child: Text("Payment",style: TextStyle(color: Colors.black))),
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
        crossAxisAlignment:   CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
              ),
              width: MediaQuery.of(context).size.width,
              height: 170,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 230,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Image.asset("assets/images/visa.png")
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Text("4567*****************231",style: TextStyle(
                          color: Colors.white,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Text("11/12",style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Text("John Doe",style: TextStyle(
                            color: Colors.white
                        ),),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 30),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>paymentpuchase()));
                  },
                  child: Row(
                    children: [
                      CircleCheckbox(value: (1==1), onChanged: (value)=>0,
                        fillColor: MaterialStateProperty.all(Colors.grey),
                        checkColor: Colors.white,



                      ),
                      Image.asset("assets/images/mastercard.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Master Card",style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 30),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>paymentpuchase()));
                  },
                  child: Row(
                    children: [
                      InkWell(
                        child: CircleCheckbox(value: (0==0), onChanged: (value)=>0,
                          fillColor: MaterialStateProperty.all(Colors.grey),
                          checkColor: Colors.white,


                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>paymentpuchase()));
                        },
                      ),
                      Image.asset("assets/images/instrument.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Instruments",style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 30),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>paymentpuchase()));
                  },
                  child: Row(
                    children: [
                      CircleCheckbox(value: (1==1), onChanged: (value)=>0,
                        fillColor: MaterialStateProperty.all(Colors.grey),
                        checkColor: Colors.white,


                      ),
                      Image.asset("assets/images/cash.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Cash",style: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,
                        )),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          )

        ],
      ),
    );
  }
}
