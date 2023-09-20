import 'package:get/get.dart';

class LoadingController extends GetxController {
  var isLoading = false.obs;
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

  void uploadFile() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 3));
    isLoading.value = false;
    update();
  }
}
