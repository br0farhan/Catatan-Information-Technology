import 'package:fm_flutter/modul/Getx/counter/view/counter_view.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterControllerGetx extends GetxController {
  CounterView? view;

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

 int counter = 10;

  updateCounter() {
    counter += 2;
    update();
  }
   minusCounter() {
    counter -= 2;
    update();
  }
}
