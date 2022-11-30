import 'package:flutter/material.dart';
import 'package:salespro/pages/loginpage.dart';
class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 7,
                        spreadRadius: 5,
                        offset: Offset(0, 3)
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 23,right: 10,left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Rieyad Store",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text("Free Plan",style: TextStyle(
                                color: Colors.grey
                              )),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 3),
                      spreadRadius: 7,
                      blurRadius: 5,

                    )
                  ]
                ),
                child: ExpansionTile(
                  title: Text("Profile"),
                  leading: Icon(Icons.person,color: Colors.blue),
                  trailing: Icon(Icons.arrow_forward_ios),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 3),
                      spreadRadius: 7,
                      blurRadius: 5,

                    )
                  ]
                ),
                child: ExpansionTile(
                  title: Text("Create Online Store"),
                  leading: Icon(Icons.store,color: Colors.blue),
                  trailing: Icon(Icons.arrow_forward_ios),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 3),
                      spreadRadius: 7,
                      blurRadius: 5,

                    )
                  ]
                ),
                child: ExpansionTile(
                  title: Text("Setting"),
                  leading: Icon(Icons.settings,color: Colors.blue),
                  trailing: Icon(Icons.arrow_forward_ios),
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Notification Setting"),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Language Setting"),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Online Store Seting"),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20,top: 20,bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("App Update"),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(0, 3),
                        spreadRadius: 7,
                        blurRadius: 5,

                      )
                    ]
                ),
                child: ExpansionTile(
                  title: Text("Help & Support"),
                  leading: Icon(Icons.list_alt_outlined,color: Colors.blue),
                  trailing: Icon(Icons.arrow_forward_ios),
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("FAQs"),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Contact Us"),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ],

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 3),
                      spreadRadius: 7,
                      blurRadius: 5,

                    )
                  ]
                ),
                child: ExpansionTile(
                  title: Text("About Us"),
                  leading: Icon(Icons.help_outline,color: Colors.blue),
                  trailing: Icon(Icons.arrow_forward_ios),
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("About Us"),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("About Sales Pro"),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20,top: 20,bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Term and Conditions"),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(0, 3),
                        spreadRadius: 7,
                        blurRadius: 5,

                      ),
                    ]
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.logout,color: Colors.blue),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text("Log Out",style: TextStyle(fontSize: 15)),
                            ),
                          ],
                        ),

                        Icon(Icons.arrow_forward_ios,color:Colors.grey,)
                      ],
                    ),
                  )
                ),
              ),
            ),
          ],
        )
        ],

      ),
    );
  }
}
