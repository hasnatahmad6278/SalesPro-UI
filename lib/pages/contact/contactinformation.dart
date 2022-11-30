import 'dart:io';

import 'package:circle_checkbox/redev_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'contactpage.dart';
class contactinformation extends StatefulWidget {
  const contactinformation({Key? key}) : super(key: key);

  @override
  State<contactinformation> createState() => _contactinformationState();
}

class _contactinformationState extends State<contactinformation> {
  File?_image;
  String? _info1 ="";
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

    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar:  AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => contact()));
          },
        ),
        title: Text("Add Contact",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: ListView(
        children: [
          Column(
            children: [

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
                               return 'Please Enter Phone Number';
                             }
                             return null;
                           },
                           decoration: InputDecoration(
                             label: Text("Phone Number"),
                             hintText: "03037452425",
                             border: OutlineInputBorder(

                             ),
                           ),
                         ) ,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                       child: Container(
                         width: MediaQuery.of(context).size.width,
                         child:TextFormField(
                           validator: (value) {
                             if (value == null || value.isEmpty) {
                               return 'Please Enter Name';
                             }
                             return null;
                           },
                           decoration: InputDecoration(
                             label: Text("Name"),
                             border: OutlineInputBorder(

                             ),
                           ),
                         ) ,
                       ),
                     ),
                   ],
                 ),
               ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Radio(value: "Customer", groupValue: _info1, onChanged:(String? value){
                    setState(() {
                      _info1 = value;
                    });
                  }),
                  Text("Customer"),
                  Radio(value: "Supplier", groupValue: _info1, onChanged:(String? value){
                    setState(() {
                      _info1 = value;

                    });
                  }),
                  Text("Supplier"),

                  Radio(value: "Vendor", groupValue: _info1, onChanged:(String? value){
                    setState(() {
                      _info1 = value;
                    });
                  }),
                  Text("Vendor"),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child: Column(
                  children: [
                    ExpansionTile(title: Center(
                      child: Text("More Info",style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18
                      ),),
                    ),
                      children: [
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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera,color: Colors.blue,size: 50),
                                InkWell(
                                  onTap: (){
                                    cameraimage();
                                  },
                                  child: Text("Camera",style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 25,
                                  ),),
                                )
                              ],
                            ),
                          ],
                        )
                        ),
                        );
                        showDialog(context: context, builder: (BuildContext context) => errorDialog);
                         },
                           child: Image.asset("assets/images/pickimage.png",height: 100,width: 150)),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child:TextField(
                              decoration: InputDecoration(
                                label: Text("Email Addrees"),
                                border: OutlineInputBorder(

                                ),
                              ),
                            ) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child:TextField(
                              decoration: InputDecoration(
                                label: Text("Address"),
                                border: OutlineInputBorder(

                                ),
                              ),
                            ) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child:TextField(
                              decoration: InputDecoration(
                                label: Text("Note"),
                                border: OutlineInputBorder(

                                ),
                              ),
                            ) ,
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    }, child: Text("Save",style: TextStyle(

                    ),))),
              )
            ],
          ),
        ],

      ),
    );
  }
}
