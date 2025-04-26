 import 'package:flutter_application_1/views/screen/Info.dart';
import 'package:flutter_application_1/views/screen/home.dart';
import 'package:flutter_application_1/views/screen/login.dart';
import 'package:flutter_application_1/views/screen/profile.dart';
import 'package:flutter_application_1/views/screen/register.dart';
import 'package:flutter_application_1/views/screen/setting.dart';
import 'package:get/get_navigation/get_navigation.dart';

List <GetPage> myroutes=[
  GetPage(name:"/",page: ()=> login()),
  GetPage(name: "/register",page: ()=> register()),
  GetPage(name: "/HomeScreen",page: ()=> HomeScreen()),
   GetPage(name: "/Setting",page: ()=> Setting()),
   GetPage(name: "/Profile",page: ()=>  Profile()),
      GetPage(name: "/Info",page: ()=>  Info()),
    
   


 ];

 