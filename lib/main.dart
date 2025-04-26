import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilies/routes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main()async {
await GetStorage.init();
    runApp( GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:"/",
      getPages:myroutes,
      

      

    ));
}
