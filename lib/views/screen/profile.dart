import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/appcolors.dart';
import 'package:flutter_application_1/views/widget/myText.dart';
import 'package:flutter_application_1/views/widget/mybutton.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController skinTypeController = TextEditingController();
    TextEditingController triggerController = TextEditingController();
    TextEditingController moisturizerController = TextEditingController();
    TextEditingController notesController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text("ECZEMA CARE APP"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Image.asset(
                "assets/images/user.png",
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 10),
              const Text(
                "MY PROFILE",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              myTextfield(hintText: "Full Name", icon: Icons.person, controller: nameController),
              const SizedBox(height: 10),
              myTextfield(hintText: "Email", icon: Icons.email, controller: emailController),
              const SizedBox(height: 10),
              myTextfield(hintText: "Phone Number", icon: Icons.phone, controller: phoneController),
              const SizedBox(height: 10),
              myTextfield(hintText: "Skin Type", icon: Icons.water_drop, controller: skinTypeController),
              const SizedBox(height: 10),
              myTextfield(hintText: "Known Triggers", icon: Icons.warning_amber, controller: triggerController),
              const SizedBox(height: 10),
              myTextfield(hintText: "Preferred Moisturizers", icon: Icons.spa, controller: moisturizerController),
              const SizedBox(height: 10),
              myTextfield(
                hintText: "Medical Notes / History",
                icon: Icons.description,
                controller: notesController,
              ),
              const SizedBox(height: 20),
              myButton(() async {
                if (nameController.text.isEmpty ||
                    emailController.text.isEmpty ||
                    phoneController.text.isEmpty ||
                    skinTypeController.text.isEmpty ||
                    triggerController.text.isEmpty ||
                    moisturizerController.text.isEmpty ||
                    notesController.text.isEmpty) {
                  Get.snackbar("Error", "Please fill in all fields.");
                  return;
                } else {
                  final response = await http.get(Uri.parse(
                    "http://localhost/eczemacareapp/pro.php?fullname=${nameController.text}&email=${emailController.text}&phone=${phoneController.text}&skintype=${skinTypeController.text}&triggers=${triggerController.text}&moistuzer=${moisturizerController.text}&history=${notesController.text}",
                  ));

                  print(response.body);

                  if (response.statusCode == 200) {
                    final serverData = jsonDecode(response.body);
                    if (serverData['code'] == 1) {
                      Get.snackbar("Success", "Profile updated successfully!");
                    } else {
                      Get.snackbar("Error", serverData['message'] ?? "Profile update failed.");
                    }
                  } else {
                    Get.snackbar("Error", "Failed to connect to the server.");
                  }
                }

                
                final profileData = {
                  'name': nameController.text,
                  'email': emailController.text,
                  'phone': phoneController.text,
                  'skintype': skinTypeController.text,
                  'triggers': triggerController.text,
                  'moisturizer': moisturizerController.text,
                  'notes': notesController.text,
                };

                
                Get.toNamed("/Setting", arguments: profileData);
              }, label: "SAVE CHANGES"),
              const SizedBox(height: 15),
              myButton(() {
                Get.toNamed("/Setting");
              }, label: "Go to Settings", color: secondaryColor),
            ],
          ),
        ),
      ),
    );
  }
}
