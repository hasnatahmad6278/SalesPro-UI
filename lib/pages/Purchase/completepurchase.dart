import 'package:flutter/material.dart';
import 'package:salespro/pages/Purchase/purchasepayment.dart';
class paymentpuchase extends StatefulWidget {
  const paymentpuchase({Key? key}) : super(key: key);

  @override
  State<paymentpuchase> createState() => _paymentpuchaseState();
}

class _paymentpuchaseState extends State<paymentpuchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => purchasepayment()));
          },
        ),
        title: Center(child: Text("Payment Complete",style: TextStyle(color: Colors.black))),
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
          Center(
            child: Column(
              children: [
                Image.asset("assets/images/tick.png")
              ],
            ),
          ),
          Container(
            width: 170,
            height: 70,
            decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: Offset(0,3)
                  )
                ]
            ) ,
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Total"),
                          Text("85.0",style: TextStyle(
                            color: Colors.grey,
                          ),)
                        ],
                      ),

                      Container(
                        height: 30,
                        width: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Text("Return"),
                          Text("0.0",style: TextStyle(
                            color: Colors.grey,
                          ),)
                        ],
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70,right: 10,left: 10),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text("Invoice:#121314"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text("Send Email"),
                  trailing: Icon(Icons.email),
                ),
                ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text("Send SMS"),
                  trailing: Icon(Icons.sms),
                ),
                ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text("Recevied Pin"),
                  trailing: Icon(Icons.print),
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}
