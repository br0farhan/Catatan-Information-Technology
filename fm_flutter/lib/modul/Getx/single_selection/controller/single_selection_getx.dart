import 'package:fm_flutter/modul/Getx/single_selection/view/single_selection_view.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SingleSelectionGetx extends GetxController {
  SingleSelectionView? view;

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

  int selectionIndex = -1;

  updateIndex(int newIndex) {
    selectionIndex = newIndex;
    update();
  }
  List cabor = ["Badminton", "Sepakbola", "Voli", "Silat", "Lari"];
}
