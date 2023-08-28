import 'package:fm_flutter/modul/Getx/multiple_selection/view/multiple_view.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MultipleControllerGetx extends GetxController {
  MultipleSelectionView? view;

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

  List<Map<String, dynamic>> categoryPartai = [
    {
      "label": "DEMOKRAT",
      "name": "DEMOKRAT",
    },
    {
      "label": "PPP",
      "name": "PPP",
    },
    {
      "label": "Golkar",
      "name": "Golkar",
    },
    {
      "label": "GERINDRA",
      "name": "GERINDRA",
    },
    {
      "label": "PKB",
      "name": "PKB",
    },
    {
      "label": "PDIP",
      "name": "PDIP",
    },
    {
      "label": "NASDEM",
      "name": "NASDEM",
    }
  ];
  updateselecetion(Map itemCategory) {
    if (itemCategory["selected"] == true) {
      itemCategory["selected"] = false;
    } else {
      itemCategory["selected"] = true;
    }

    update();
  }
}
