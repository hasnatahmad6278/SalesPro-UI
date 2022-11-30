import 'package:flutter/material.dart';
import 'package:salespro/pages/Purchase/purchasefashion.dart';
import 'package:salespro/pages/Purchase/purchasepage.dart';
class purchasecategories extends StatefulWidget {
  const purchasecategories({Key? key}) : super(key: key);

  @override
  State<purchasecategories> createState() => _purchasecategoriesState();
}

class _purchasecategoriesState extends State<purchasecategories> {
  TextEditingController controller = TextEditingController();
  int selected = 0;
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
        title: Text("Categories",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  width: 200,
                  color: Colors.blue.withOpacity(0.1),
                  child:TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search ",
                      border: OutlineInputBorder(

                      ),
                    ),
                  ) ,
                ),
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Mobile"),
                    InkWell(
                      onTap: (){
                        setState(() {
                          selected = 1;
                        });
                        insert("Mobile");
                      },
                      child: Container(
                        width: 70,
                        height: 40,
                        child: Center(child: Text("Select",style: TextStyle(color: Colors.white,fontSize: 15),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selected==1?Colors.blue:Colors.blue.withOpacity(0.1)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Laptop"),
                    InkWell(
                      onTap: (){
                        setState(() {
                          selected =2;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 40,
                        child: Center(child: Text("Select",style: TextStyle(color: Colors.white,fontSize: 15),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selected==2? Colors.blue:Colors.blue.withOpacity(0.1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tab"),
                    InkWell(
                      onTap: (){
                        setState(() {
                          selected = 3;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 40,
                        child: Center(child: Text("Select",style: TextStyle(color: Colors.white,fontSize: 15),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selected==3?Colors.blue:Colors.blue.withOpacity(0.1)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Mouse"),
                    InkWell(
                      onTap: (){
                        setState(() {
                          selected =4;
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 40,
                        child: Center(child: Text("Select",style: TextStyle(color: Colors.white,fontSize: 15),)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selected==4?Colors.blue:Colors.blue.withOpacity(0.1)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )


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
