import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/widget/myText.dart';
import 'package:flutter_application_1/views/widget/mybutton.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController userName1Controller = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController userEmailController = TextEditingController();
    TextEditingController passwordAgainController = TextEditingController();
    TextEditingController phoneController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("ECZEMA CARE APP"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView( 
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 100,
                  height: 100,
                ),
                Text(
                  "REGISTER HERE",
                  style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold,
                  ),
                ),
                myTextfield(
                  hintText: "ENTER YOUR FIRSTNAME",
                  icon: Icons.person,
                  controller: userName1Controller,
                ),
                SizedBox(height: 10),
                myTextfield(
                  hintText: "ENTER YOUR LASTNAME",
                  icon: Icons.person,
                  controller: userNameController,
                ),
                SizedBox(height: 10),
                myTextfield(
                  hintText: "ENTER YOUR EMAIL",
                  icon: Icons.email,
                  controller: userEmailController,
                ),
                SizedBox(height: 10),
                myTextfield(
                  hintText: "ENTER YOUR PHONE NUMBER",
                  icon: Icons.lock,
                  controller: phoneController,
                ),
                SizedBox(height: 10),
                myTextfield(
                  hintText: "ENTER YOUR PASSWORD",
                  icon: Icons.lock,
                  controller: passwordController,
                  
                ),
                SizedBox(height: 10),
                myTextfield(
                  hintText: "ENTER YOUR PASSWORD AGAIN ",
                  icon: Icons.lock,
                  controller: passwordAgainController,
                ),
                SizedBox(height: 10),
                myButton(() async {
                  if(userName1Controller.text.isEmpty){
                    Get.snackbar("Error", "enter first name");

                  }
                 else if(userNameController.text.isEmpty){
                    Get.snackbar("Error", "enter last name");

                  }
                   else if(userEmailController.text.isEmpty){
                    Get.snackbar("Error", "enter email");

                  }
                 else  if(phoneController.text.isEmpty){
                    Get.snackbar("Error", "enter phone number");

                  }
                  else if(passwordController.text.isEmpty || passwordAgainController.text.isEmpty|| passwordController.text.compareTo(passwordAgainController.text)!=0){
                    Get.snackbar("Error", "password and password again wrong ");

                  }else{
                  final response = await http.get(Uri.parse(
                      "http://localhost/eczemacareapp/register.php?fname=${userName1Controller.text}&lname=${userNameController.text}&email=${userEmailController.text}&phone=${phoneController.text}&password=${passwordController.text}"));
                  print(response.body);
                  if(response.statusCode==200){
                              final serverData = jsonDecode(response.body);
                               if (serverData['code']==1){
                            Get.snackbar("success", "you have been registered");
    
                             Get.toNamed("/");
          }

                  }
                  else{
                    Get.snackbar("registration", "Registration failed");
                  }

                  }

                  
                }, label: "REGISTER"),
                TextButton(
                  onPressed: () {
                    Get.toNamed("/");
                  },
                  child: const Text("i already have an account "),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
