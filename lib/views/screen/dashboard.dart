import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/appcolors.dart';
import 'package:get/get.dart';

final List titles = ["products", "User", "info on eczema", "when to use the products"];
final List iconData = [Icons.list, Icons.person, Icons.info, Icons.info];

class Dashboard extends StatelessWidget {
  
  final ScrollController _outerScrollController = ScrollController();
  final ScrollController _gridScrollController = ScrollController();

  Dashboard({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("DASHBOARD"),
        centerTitle: true,
        foregroundColor: secondaryColor,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/Setting");
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: SingleChildScrollView(
        controller: _outerScrollController, 
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "HELLO USER",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            Scrollbar(
              controller: _gridScrollController, 
              thumbVisibility: true,
              child: GridView.builder(
                controller: _gridScrollController, 
                itemCount: titles.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), 
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: mainColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            iconData[index],
                            size: 40,
                            color: mainColor.withOpacity(1),
                          ),
                          Text(
                            titles[index],
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

