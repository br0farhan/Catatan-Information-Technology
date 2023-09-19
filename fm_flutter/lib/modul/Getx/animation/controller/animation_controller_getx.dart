import 'package:fm_flutter/modul/Getx/animation/view/animation_view.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AnimationControllerGetx extends GetxController {
  AnimationView? view;
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

  bool isAnimated = false;
  updateAnimation(){
    isAnimated = !isAnimated;
    update();
  }

}
