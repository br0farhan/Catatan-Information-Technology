import 'package:fm_flutter/modul/Getx/enabledOrDisabled/view/enabled_disabled_view.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class EnabledOrDisabledControllergetx extends GetxController{
   EnabledOrDisabledView? view;

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

  String email = "";
  String password = "";

  updateState(){
    update();
  }
  bool get isValid{
    return email.isNotEmpty && password.isNotEmpty;
  }
}