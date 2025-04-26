
import 'package:get/get.dart';

class Homescreencontroller extends GetxController {
  var selectedPageIndex=0.obs;
  updateSelection(pos)=>selectedPageIndex.value=pos;
}