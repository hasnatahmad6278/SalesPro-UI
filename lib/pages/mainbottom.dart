import 'package:flutter/material.dart';
import 'package:salespro/pages/Dashboard.dart';
import 'package:salespro/pages/Maan.dart';
import 'package:salespro/pages/package.dart';
import 'package:salespro/pages/setting.dart';


class PMbottom extends StatefulWidget {
  const PMbottom({Key? key}) : super(key: key);

  @override
  State<PMbottom> createState() => _PMbottomState();
}

class _PMbottomState extends State<PMbottom> {
  int currentNo = 0;
  List allPages = [
    dashbaord(),
    maindart(),
    package(),
    setting()


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allPages[currentNo],
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Color(0xff2C2B2B),
        selectedIconTheme: IconThemeData(color: Colors.blue,),
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(color: Colors.red),
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.light_mode,),
            label: 'Maan',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,),
            label: 'Package',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),
            label: 'Settings',
          ),
        ],

        //
        onTap: (index){
          setState(() {
            currentNo = index;
          });
        },
        currentIndex: currentNo,
      ),

    );
  }
}