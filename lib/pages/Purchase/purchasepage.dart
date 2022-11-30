import 'package:flutter/material.dart';
import 'package:salespro/pages/Purchase/purchasecategories.dart';
import 'package:salespro/pages/Purchase/purchasefashion.dart';
import 'package:salespro/pages/Purchase/purchaseinvoice.dart';
import '../mainbottom.dart';
class purchase extends StatefulWidget {
  const purchase({Key? key}) : super(key: key);

  @override
  State<purchase> createState() => _purchaseState();
}

class _purchaseState extends State<purchase> {
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
        title: Text("Purchase Deatils",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,

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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => purchaseinvoice()));
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>purchasecategories()));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>fashionpurchase()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => purchaseinvoice()));
                      }, child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Purchase List",style: TextStyle(fontSize: 18)),
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
