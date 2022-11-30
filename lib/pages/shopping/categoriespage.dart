import 'package:flutter/material.dart';
import 'package:salespro/pages/shopping/Addfashionpage.dart';
import 'package:salespro/pages/shopping/salesdetailspage.dart';
class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => salesdetails()));
          },
        ),
        title: Center(child: Text("Categories",style: TextStyle(color: Colors.black))),
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
                    controller: controller,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>addfashion()));
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
                    Container(
                        decoration: BoxDecoration(

                        ),
                        child: Container(
                          width: 70,
                            height: 40,
                            child: Center(child: InkWell(
                                onTap: (){
                                  controller.clear();
                                    insert("Mobile");
                                },
                                child: Text("Select",style: TextStyle(color: Colors.black,fontSize: 15),))),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.1)
                        ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Laptop"),
                    Container(
                        decoration: BoxDecoration(

                        ),
                        child: Container(
                          width: 70,
                          height: 40,
                          child: Center(child: InkWell(
                               onTap: (){
                                 controller.clear();
                                 insert("Laptop");
                               },
                              child: Text("Select",style: TextStyle(color: Colors.black,fontSize: 15),))),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.withOpacity(0.1)
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tab"),
                    Container(
                        decoration: BoxDecoration(

                        ),
                        child: Container(
                          width: 70,
                          height: 40,
                          child: Center(child: InkWell(
                              onTap: (){
                                controller.clear();
                                insert("Tab");
                              },
                              child: Text("Select",style: TextStyle(color: Colors.black,fontSize: 15),))),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.withOpacity(0.1)
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Mouse"),
                    Container(
                        decoration: BoxDecoration(

                        ),
                        child: Container(
                          width: 70,
                          height: 40,
                          child: Center(child: InkWell(
                              onTap: (){
                                controller.clear();
                                insert("Mouse");
                              },
                              child: Text("Select",style: TextStyle(color: Colors.black,fontSize: 15),))),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.withOpacity(0.1)
                          ),
                        )),
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
