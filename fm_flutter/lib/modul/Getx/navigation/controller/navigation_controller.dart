import 'package:fm_flutter/modul/Getx/navigation/view/navigation_view.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NavigationController extends GetxController {
  NavigationView? view;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List menuList = ["Dashboard", "Order", "Profil"];
  int selectionIndex = 0;
  updateIndex(int newIndex) {
    selectionIndex = newIndex;
    update();
  }
}
