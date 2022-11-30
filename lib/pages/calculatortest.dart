import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:salespro/pages/shopping/Salespage.dart';

import 'mainbottom.dart';
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String equation = "";
  String result = "";
  String expression = "";
  double equationFontSize = 20;
  double resultFontSize = 45;

  buttonPressed(String buttonText){
    setState(() {
      if(buttonText == "C"){
        equation = "";
        //result = "0";
        equationFontSize = 30;
        resultFontSize = 45;
      }
      else if(buttonText == "AC"){
        equation = "";
        result = "";
        equationFontSize = 30;
        resultFontSize = 45;
      }

      else if(buttonText == "⌫"){
        equationFontSize = 30;
        resultFontSize = 45;
        equation = equation.substring(0, equation.length - 1);
        if(equation == ""){
          equation = "";
        }
      }

      else if(buttonText == "="){
        equationFontSize = 30;
        resultFontSize = 45;
        expression = equation;
        expression = expression.replaceAll('*', '*');
        expression = expression.replaceAll('÷', '/');

        try{
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        }
        catch(e){
          result = "Error";
        }

      }

      else{
        equationFontSize = 30;
        resultFontSize = 45;
        if(equation == "0"){
          equation = buttonText;
        }else {
          equation = equation + buttonText;
        }
      }
    });
  }

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor){
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      // child: FlatButton(
      //     shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(0.0),
      //         side: BorderSide(
      //           color: Colors.white,
      //           width: 1,
      //
      //         )
      //     ),
      //     padding: EdgeInsets.all(16),
      //     onPressed: () => buttonPressed(buttonText),
      //     child: Text(
      //       buttonText,
      //       style: TextStyle(
      //         fontSize: 30,
      //         fontWeight: FontWeight.normal,
      //         color: Colors.black,
      //       ),
      //     )
      // ),
    );
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
        title: Text("Calculator",style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.person_add_alt_1,color: Colors.black),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child:  IconButton(onPressed: (){

            }, icon:PopupMenuButton(

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              color: Colors.white,
              itemBuilder:(context) => [
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.add,color: Colors.black),
                    Text("Add Product"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.list_alt,color: Colors.black),
                    Text("Stock List"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.list_alt_outlined,color: Colors.black),
                    Text("Sale List"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.person_add,color: Colors.black),
                    Text("Sales List"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.person,color: Colors.black),
                    Text("Contact List"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.list,color: Colors.black),
                    Text("Due List"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),
                PopupMenuItem(child: Row(

                  children: [
                    Icon(Icons.play_circle_outline,color: Colors.black),
                    Text("How to Play"),],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),value: 1,),

              ],
              child: Icon(Icons.more_vert,
                color: Colors.black,

              ),
            )),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => sales()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
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
                              padding: const EdgeInsets.only(left: 10,bottom: 25),
                              child: Icon(Icons.shop,color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("Total:\$Cart is\n "+result,style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              )),
                            ),
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(Icons.arrow_forward,color: Colors.white,),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80,right: 30,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.blue.withOpacity(0.1),
                              filled: true,
                              hintText: "Product...",
                              label: Text("Product Name",style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 13,


                              )),
                              border: OutlineInputBorder(

                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                    Container(
                      width: 150,
                      height: 58,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 1),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text("\$",style: TextStyle(fontSize: 20),

                            ),
                            Text(equation, style: TextStyle(fontSize: equationFontSize),),
                          ],
                        ),
                      ),
                    ),



                  ],
                ),
              ),
            ],
          ),

          Column(
          mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * .75,
                    child: Table(
                      children: [
                        TableRow(
                            children: [
                              buildButton("AC", 1, Colors.white, ),
                              buildButton("⌫", 1, Colors.white),
                              buildButton("÷", 1, Colors.white),

                            ]
                        ),

                        TableRow(
                            children: [
                              buildButton("7", 1, Colors.white),
                              buildButton("8", 1, Colors.white),
                              buildButton("9", 1, Colors.white),

                            ]
                        ),

                        TableRow(
                            children: [
                              buildButton("4", 1, Colors.white),
                              buildButton("5", 1, Colors.white),
                              buildButton("6", 1, Colors.white),

                            ]
                        ),

                        TableRow(
                            children: [
                              buildButton("1", 1, Colors.white),
                              buildButton("2", 1, Colors.white),
                              buildButton("3", 1, Colors.white),

                            ]
                        ),

                        TableRow(
                            children: [
                              buildButton("00", 1, Colors.white),
                              buildButton("0", 1, Colors.white),
                              buildButton(".", 1, Colors.white),

                            ]
                        ),
                      ],
                    ),
                  ),


                  Container(
                    width: MediaQuery.of(context).size.width *.25,
                    child: Table(
                      children: [
                        TableRow(
                            children: [
                              buildButton("C", 1, Colors.white),
                            ]
                        ),TableRow(
                            children: [
                              buildButton("×", 1, Colors.white),
                            ]
                        ),

                        TableRow(
                            children: [
                              buildButton("-", 1, Colors.white),
                            ]
                        ),

                        TableRow(
                            children: [
                              buildButton("+", 1, Colors.white),
                            ]
                        ),

                        TableRow(
                            children: [
                              buildButton("=", 1, Colors.white),
                            ]
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}