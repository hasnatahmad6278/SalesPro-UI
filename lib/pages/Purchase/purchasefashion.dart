import 'package:flutter/material.dart';
import 'package:salespro/pages/Purchase/purchasepage.dart';
class fashionpurchase extends StatefulWidget {
  const fashionpurchase({Key? key}) : super(key: key);

  @override
  State<fashionpurchase> createState() => _fashionpurchaseState();
}

class _fashionpurchaseState extends State<fashionpurchase> {
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
        title: Center(child: Text("Add Category",style: TextStyle(color: Colors.black))),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blue.withOpacity(0.1),
            child:TextField(
              decoration: InputDecoration(
                label: Text("Fashion"),
                hintText: "Fashion",
                border: OutlineInputBorder(

                ),
              ),
            ) ,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
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
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => dashbaord()));
                }, child: Text("Save"),style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
                )),

              ),
            ],
          ),
        ),
      ]),
    );
  }
}
