import 'package:flutter/material.dart';
import 'package:salespro/pages/Dashboard.dart';
import 'package:salespro/pages/mainbottom.dart';
class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       body: Column(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Padding(
             padding: const EdgeInsets.only(bottom: 70),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset("assets/images/registerimage.png"),
                 Text("Congratulations",style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold)),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("congratulation on registered account. \nwe will provide handsome services",style: TextStyle(fontSize: 15),),
                 ),
               ],
             ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PMbottom()));
                      }, child: Text("Continue"),style: ButtonStyle(
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
