import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/appcolors.dart';
import 'package:get/get.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    final profileData = Get.arguments;

    final Map<String, String> profile = profileData != null && profileData is Map<String, String>
        ? Map<String, String>.from(profileData)
        : {
            'name': 'Not Provided',
            'email': 'Not Provided',
            'phone': 'Not Provided',
            'skintype': 'Not Provided',
            'triggers': 'Not Provided',
            'moisturizer': 'Not Provided',
            'notes': 'Not Provided',
          };

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Full Name"),
                subtitle: Text(profile['name'] ?? "Not Provided"),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text("Email"),
                subtitle: Text(profile['email'] ?? "Not Provided"),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Phone Number"),
                subtitle: Text(profile['phone'] ?? "Not Provided"),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.water_drop),
                title: const Text("Skin Type"),
                subtitle: Text(profile['skintype'] ?? "Not Provided"),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.warning_amber),
                title: const Text("Known Triggers"),
                subtitle: Text(profile['triggers'] ?? "Not Provided"),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.spa),
                title: const Text("Preferred Moisturizers"),
                subtitle: Text(profile['moisturizer'] ?? "Not Provided"),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.description),
                title: const Text("Medical Notes"),
                subtitle: Text(profile['notes'] ?? "Not Provided"),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.edit, color: Colors.blue),
                title: const Text("Edit Profile"),
                onTap: () {
                  Get.toNamed("/Profile");
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.red),
                title: const Text("Log Out"),
                onTap: () {
                  Get.snackbar("Logged Out", "You have been logged out.");
                  Get.offNamed("/Login");
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.dashboard, color: Colors.green),
                title: const Text("Back to Dashboard"),
                onTap: () {
                  Get.offNamed("/HomeScreen");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
