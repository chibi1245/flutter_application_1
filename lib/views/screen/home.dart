import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/HomescreenController.dart';
import 'package:flutter_application_1/views/screen/Info.dart';
import 'package:flutter_application_1/views/screen/dashboard.dart';
import 'package:flutter_application_1/views/screen/products.dart';
import 'package:flutter_application_1/views/screen/profile.dart';
import 'package:flutter_application_1/views/screen/setting.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
Homescreencontroller  homescreencontroller = Homescreencontroller();
var myScreens=[Dashboard(),Info(),Products(),Profile(),Setting()];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return   Scaffold(
     
    bottomNavigationBar: Obx(()=>BottomNavigationBar(items:[
      BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "Dashboard"),
      BottomNavigationBarItem(icon: Icon(Icons.category),label: "information on eczema"),
      BottomNavigationBarItem(icon: Icon(Icons.list),label: "products to use"),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
            BottomNavigationBarItem(icon: Icon( Icons.settings),label: "setting"),
    ],
    unselectedItemColor: Colors.green,
    selectedItemColor: Colors.black,
    
    currentIndex: homescreencontroller.selectedPageIndex.value,
    onTap: (index) => homescreencontroller.updateSelection(index),
    showSelectedLabels: true,),),
    
    body:Obx(() => myScreens[homescreencontroller.selectedPageIndex.value]),
    );
  }
}