import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skin_care/catogary.dart';
import 'package:skin_care/custom_card.dart';
import 'package:skin_care/homepage.dart';
import 'package:skin_care/notification.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<IconData> icons=[
    Icons.home,
    Icons.category,
    Icons.notifications,
    Icons.person
  ];
  List<Widget> routes=[
    const Homepage(),
    const Catogary(),
    const NotificationPage(),
    const Text("Profile")

  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: routes[selectedIndex],
     
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      bottomNavigationBar: BottomAppBar(
        
        padding: const EdgeInsets.symmetric(horizontal: 10),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: icons.length,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: IconButton(onPressed: (){
              setState(() {
                selectedIndex=index;
              });
                    
            }, icon:Icon (icons[index])),
          );
        
        },)
      ),
    );
  }
}
