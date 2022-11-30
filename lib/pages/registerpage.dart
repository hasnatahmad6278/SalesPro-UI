import 'package:flutter/material.dart';
import 'package:salespro/pages/Dashboard.dart';
import 'package:salespro/pages/loginpage.dart';
import 'package:salespro/pages/welcomescreen.dart';
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final _formKey = GlobalKey<FormState>();
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
                          return 'Please enter Email Address';
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
                          return 'Please enter Password ';
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

                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()));
                }
              }, child: Text("Register"),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
              )),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have any account?",style: TextStyle(fontSize: 15)),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                      child: Text("Login",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 17),),
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                    }

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
