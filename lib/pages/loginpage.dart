import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:salespro/pages/Dashboard.dart';
import 'package:salespro/pages/mainbottom.dart';
import 'package:salespro/pages/registerpage.dart';
import 'package:email_validator/email_validator.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  late final ValueChanged<String> onSubmit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset("assets/images/centerimage.png"),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            spreadRadius: 5,
                            offset: Offset(0,3),
                          )
                        ]
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (value){

                      },
                      decoration: InputDecoration(
                        hintText: "Email Address",

                        border: InputBorder.none,

                        icon: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.person),
                        ),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            spreadRadius: 5,
                            offset: Offset(0,3),
                          )
                        ]
                    ),
                    child: TextFormField(

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onChanged: (value){

                      },
                      decoration: InputDecoration(
                          hintText: "Password",

                          border: InputBorder.none,

                          icon: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(Icons.lock),
                          ),
                          suffixIcon: Icon(Icons.remove_red_eye)

                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 25,top: 20),
            child: Text("Forget Password?",style: TextStyle(
              color: Colors.grey,
              fontSize: 15
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 15,left: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              child: ElevatedButton(onPressed: (){
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PMbottom()));
                }
              }, child: Text("Login"),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
              )),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Did't have any account?",style: TextStyle(fontSize: 15)),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                      child: Text("Register",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 17),),
                  onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
                  },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
