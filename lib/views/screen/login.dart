import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/appcolors.dart';
import 'package:flutter_application_1/controller/logincontroller.dart';
import 'package:flutter_application_1/views/widget/myButton.dart';
import 'package:flutter_application_1/views/widget/myText.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

var store=GetStorage();
Logincontroller logincontroller=Logincontroller();

// ignore: camel_case_types
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController =TextEditingController();
        TextEditingController passwordController =TextEditingController();
        String username=store.read("username")??"";
         String password=store.read("password")??"";
        

        userNameController.text=username;
        passwordController.text=password;
        
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.green,
       title: Text("ECZEMA CARE APP"),
       centerTitle: true,),
       
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 5, 40, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         
          children: [
             Obx (()=> Text(logincontroller.errorMessage.value)),
            Image.asset("assets/images/logo.png",
            width: 120,
            height: 120,
            ),
            Text("Eczema care up",
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            myTextfield(   hintText: "Enter username" ,
            icon: Icons.person,
            controller:userNameController),
            SizedBox(
              height: 10,
            ),
            myTextfield(hintText: "enter password",
            icon:  Icons.lock,
      
            controller: passwordController),
            SizedBox(
              height:10,
            ),
        myButton(()async {
          if(userNameController.text.isEmpty){
            Get.snackbar("error", "enter username");

          }else if(passwordController.text.isEmpty) {
            Get.snackbar("error", "enter password");
          }
          else{
            final response = await http.get(Uri.parse("http://localhost/eczemacareapp/login.php?fname=${userNameController.text}&password=${passwordController.text}"));
            if(response.statusCode==200){
          final serverData = jsonDecode(response.body);
          if (serverData['code']==1){
            String fname=serverData[ "userdetails"][0]["fname"];
            print(fname);
          Get.toNamed("/HomeScreen");
          }
          else{
            Get.snackbar("error credentials", serverData["message"]);
          }
            }
            else{
              Get.snackbar("server error", "error eccore while login in");
            }
            
          
          }
          logincontroller.setErrorMessage("error occured");
          Get.snackbar("welcome", "welcome to eczema care up ");
          store.write("username",  userNameController.text);
          store.write("password",  passwordController.text);
          
 
        },label: "login"),
        SizedBox(
          height: 20,
        ),
        myButton(() {
          Get.toNamed("/register");
        },label: "sign up",color: secondaryColor),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
children: [
Checkbox(value:true ,onChanged :(val) {}) ,
Text( "remember me "),
Spacer(),
GestureDetector(
  child:  Text("forgot password",style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),),
  onTap: () {
    print("password recovery");
  },
),
 
],
        ),
          ],
        ),
      ),
      
    );
  }
}

