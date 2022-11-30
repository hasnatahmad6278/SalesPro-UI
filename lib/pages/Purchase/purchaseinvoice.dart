import 'package:flutter/material.dart';
import 'package:salespro/pages/Purchase/purchasepage.dart';
import 'package:salespro/pages/Purchase/purchasepayment.dart';
class purchaseinvoice extends StatefulWidget {
  const purchaseinvoice({Key? key}) : super(key: key);

  @override
  State<purchaseinvoice> createState() => _purchaseinvoiceState();
}

class _purchaseinvoiceState extends State<purchaseinvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => purchase()));
          },
        ),
        title: Text("Purchase",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Custom",style: TextStyle(color: Colors.grey),),
                    Text("\$25.0",style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                  height: 1,
                  color: Colors.grey,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal",style: TextStyle(color: Colors.grey),),
                    Text("\$0.0",style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount",style: TextStyle(color: Colors.grey),),
                    Text("\$0.0",style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("\$25.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => purchasepayment()));
                      }, child: Text("Continue"),style: ButtonStyle(
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
