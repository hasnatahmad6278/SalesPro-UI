import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:salespro/pages/Product/productpagecate.dart';

import '../Dashboard.dart';
import '../mainbottom.dart';
import '../shopping/categoriespage.dart';


class addproduct extends StatefulWidget {

    addproduct({Key? key}) : super(key: key);

  @override
  State<addproduct> createState() => _addproductState();
}

class _addproductState extends State<addproduct> {
  final _formKey = GlobalKey<FormState>();
  File?_image;
  Future getimage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(image == null) return;
    final imagetemporary = File(image.path);
    setState((){
      this._image = imagetemporary;
    });
  }
  Future cameraimage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if(image == null) return;
    final imagetemporary = File(image.path);
    setState((){
      this._image = imagetemporary;
    });
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
        title: Text("Add New Product",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,


      ),
      body: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [

           Form(
               key: _formKey,
               child: Column(

             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   child:TextFormField(
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return 'Please enter First Name';
                       }
                       return null;
                     },
                     decoration: InputDecoration(
                       label: Text("Product Name"),
                       border: OutlineInputBorder(

                       ),
                     ),
                   ) ,
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                 child: Container(
                     width:MediaQuery.of(context).size.width,
                     height: 60,
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.grey),
                       borderRadius: BorderRadius.circular(5),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.only(left: 10,right: 10),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Select Product Category"),
                           InkWell(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>prdocutcategories()));
                               },
                               child: Icon(Icons.keyboard_arrow_down)),
                         ],
                       ),
                     )
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   child:TextFormField(
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return 'Please enter Brand Name';
                       }
                       return null;
                     },
                     decoration: InputDecoration(
                       label: Text("Brand"),
                       border: OutlineInputBorder(

                       ),
                     ),
                   ) ,
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                         width: 220,
                         height: 60,
                         decoration: BoxDecoration(
                           border: Border.all(color: Colors.grey),
                           borderRadius: BorderRadius.circular(5),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Row(
                             children: [
                               Text("Product Code"),
                               InkWell(
                                   onTap: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>categories()));
                                   },
                                   child: Icon(Icons.keyboard_arrow_down)),
                             ],
                           ),
                         )
                     ),
                     Container(
                       width: 100,
                       height: 60,
                       decoration: BoxDecoration(
                           border: Border.all(color: Colors.grey),
                           borderRadius: BorderRadius.circular(5)
                       ),
                       child: InkWell(
                           onTap: (){
                             // Navigator.push(context, MaterialPageRoute(builder: (context)=>addfashion()));
                           },
                           child: InkWell(
                               onTap: (){
                               },
                               child: Icon(Icons.add))),
                     ),

                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 10,left: 10,top: 30),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Container(
                       width: 150,
                       child:TextFormField(
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter Stock';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           label: Text("Stock"),
                           border: OutlineInputBorder(

                           ),
                         ),
                       ) ,
                     ),
                     Container(
                       width: 150,
                       child:TextFormField(
                      validator: (value) {
                     if (value == null || value.isEmpty) {
                     return 'Please enter Discount';
                     }
                     return null;
                     },
                         decoration: InputDecoration(
                           label: Text("Discount"),
                           border: OutlineInputBorder(

                           ),
                         ),
                       ) ,
                     ),

                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 10,left: 10,top: 30),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Container(
                       width: 150,
                       child:TextFormField(
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter Sale Price';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           label: Text("Sale Price"),
                           border: OutlineInputBorder(

                           ),
                         ),
                       ) ,
                     ),
                     Container(
                       width: 150,
                       child:TextFormField(
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter Discount';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           label: Text("Discount"),
                           border: OutlineInputBorder(

                           ),
                         ),
                       ) ,
                     ),

                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 10,left: 10,top: 30),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Container(
                       width: 150,
                       child:TextFormField(
                         validator: (value){
                           if(value == null || value.isEmpty){
                             return 'Please enter Whole sale Price';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           label: Text("WholeSale Price"),
                           border: OutlineInputBorder(

                           ),
                         ),
                       ) ,
                     ),
                     Container(
                       width: 150,
                       child:TextFormField(
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please enter Dealer Price';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           label: Text("Dealer price"),
                           border: OutlineInputBorder(

                           ),
                         ),
                       ) ,
                     ),

                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   child:TextFormField(
                     validator: (value){
                       if(value==null || value.isEmpty){
                         return 'Please enter Manufacturer';
                       }
                       return null;
                     },
                     decoration: InputDecoration(
                       label: Text("Manufacturer"),
                       border: OutlineInputBorder(

                       ),
                     ),
                   ) ,
                 ),
               ),
             ],
           )),
            InkWell(
              onTap: (){
                Dialog errorDialog = Dialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)), //this right here
                  child: Container(
                      height: 200.0,
                      width: 200.0,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: (){
                                    getimage();
                                  },
                                  child: Icon(Icons.image,color: Colors.blue,size: 50)),
                              Text("Gallery",style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 25
                              ),),
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              cameraimage();
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera,color: Colors.blue,size: 50),
                                Text("Camera",style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 25
                                ),)
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                );
                showDialog(context: context, builder: (BuildContext context) => errorDialog);
              },
                child: Image.asset("assets/images/pickimage.png",width: 200,height:100)),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 20),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>contactinformation()));
                  }, child: Text("Save and Publish",style: TextStyle(

                  ),))),
            )

          ],


          ),
        ),
      ),
    );
  }

}
