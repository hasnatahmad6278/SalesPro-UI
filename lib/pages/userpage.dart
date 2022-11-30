import'package:flutter/material.dart';
import 'package:salespro/pages/loginpage.dart';
import 'package:salespro/pages/registerpage.dart';
class userpage extends StatefulWidget {
  const userpage({Key? key}) : super(key: key);

  @override
  State<userpage> createState() => _userpageState();
}

class _userpageState extends State<userpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/centerimage.png"),
          Text("Create a Free Account",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(top: 30,right: 15,left: 15),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>login() ));
                }, child: Text("Login")),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 15,left: 15),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => register()));
                }, child: Text("Register"),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
                )),

            ),
          ),
        ],
      ) ,
    );
  }
}
