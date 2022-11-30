import 'package:flutter/material.dart';
import 'package:salespro/pages/shopping/salesdetailspage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';




class addfashion extends StatefulWidget {

  const addfashion({Key? key}) : super(key: key);

  @override
  State<addfashion> createState() => _addfashionState();
}

class _addfashionState extends State<addfashion> {

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String text;

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back,color: Colors.black),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => salesdetails()));
          },
        ),
        title: Center(child: Text("Add Category",style: TextStyle(color: Colors.black))),
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blue.withOpacity(0.1),
            child:TextFormField(
              key: _formKey,
              autovalidateMode: AutovalidateMode.disabled,
              decoration: InputDecoration(
                label: Text("Fashion"),
                hintText: "Fashion",
                border: OutlineInputBorder(

                ),
              ),
            ) ,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 30,right: 30),
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
                _onLoading();
                }, child: Text("Save"),style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
                )),

              ),
            ],
          ),
        ),
      ]),
    );
  }
  void _onLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            width: 150,
            height: 70,
            child: Center(
              child: new Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  new CircularProgressIndicator(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: new Text("Saving Data Please Wait...."),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    new Future.delayed(new Duration(seconds: 3), () {
      // Navigator.pop(context); //pop dialog
      // _login();
    });
  }

}
