import 'package:flutter/material.dart';
import 'package:salespro/pages/delivery/addaddresspage.dart';
import 'package:salespro/pages/delivery/countryfile.dart';
class newaddressadd extends StatefulWidget {
  const newaddressadd({Key? key}) : super(key: key);

  @override
  State<newaddressadd> createState() => _newaddressaddState();
}

class _newaddressaddState extends State<newaddressadd> {
  int selected = 0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => addaddress()));
          },
        ),
        title: Text("Add new Address",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
       body: ListView(
         children: [
           Column(children: [
             Form(
               key: _formKey,
               child: Column(
                 children: [
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
                                 return 'Please enter First Name';
                               }
                               return null;
                             },
                             decoration: InputDecoration(
                               label: Text("First Name"),
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
                                 return 'Please Last Name';
                               }
                               return null;
                             },
                             decoration: InputDecoration(
                               label: Text("Last Name"),
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
                         validator: (value) {
                           if (value == null || value.isEmpty) {
                             return 'Please Enter Email Address';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           label: Text("Email Address"),
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
                             return 'Please Enter Country';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           label: Text("Country"),
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
                             return 'Please Enter Phone Number';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           label: Text("Phone Number"),
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
                             return 'Please Enter Address';
                           }
                           return null;
                         },
                         decoration: InputDecoration(
                           label: Text("Address"),
                           border: OutlineInputBorder(

                           ),
                         ),
                       ) ,
                     ),
                   ),
                 ],
               ),
             ),

             Padding(
               padding: const EdgeInsets.only(top: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [

                   InkWell(
                     onTap: (){
                       setState(() {
                         selected = 1;
                       });
                     },
                     child: Container(
                       width: 70,
                       height:40,
                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                           border: Border.all(
                             color: selected ==1? Colors.blue :Colors.black,
                             width: 2,
                           ),
                       ),
                       child: Center(child: Text("Home",
                         style: TextStyle(
                         color: Colors.black,
                       ),)),
                     ),
                   ),
                   InkWell(
                     onTap: (){
                       setState(() {
                         selected = 2;
                       });
                     },
                     child: Container(
                       width: 70,
                       height:40,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                           border: Border.all(
                             color: selected ==2? Colors.blue :Colors.black,
                             width: 2,
                           ),
                       ),
                       child: Center(child: Text("Office", style: TextStyle(
                         color: Colors.black,
                       ),)),
                     ),
                   ),
                   InkWell(
                     onTap: (){
                       setState(() {
                         selected = 3;
                       });
                     },
                     child: Container(
                       width: 70,
                       height:40,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         border: Border.all(
                           color: selected ==3? Colors.blue :Colors.black,
                           width: 2,
                         ),
                       ),
                       child: Center(child: Text("Other", style: TextStyle(
                         color: Colors.black,
                       ),)),
                     ),
                   ),


                 ],
               ),
             ),



             Padding(
               padding: const EdgeInsets.only(right: 10,left: 10,top: 20),
               child: Container(
                   width: MediaQuery.of(context).size.width,
                   height: 45,
                   child: ElevatedButton(onPressed: (){
                     if (_formKey.currentState!.validate()) {
                       // If the form is valid, display a snackbar. In the real world,
                       // you'd often call a server or save the information in a database.
                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(content: Text('Processing Data')),
                       );
                     }
                   }, child: Text("Apply"),)),
             ),
           ]
           ),
         ],

       ),
    );
  }
}
