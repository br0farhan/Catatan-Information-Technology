import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/multiple_selection/controller/multiple_controller_getx.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class MultipleSelectionView extends StatelessWidget {
  const MultipleSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MultipleControllerGetx>(
        init: MultipleControllerGetx(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Multiple Selection"),
              actions: const [],
            ),
            body: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.categoryPartai.length,
                      padding: EdgeInsets.zero,
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) {
                        var itemCategory = controller.categoryPartai[index];
                        bool isSelected = itemCategory["selected"] == true;
                        return SizedBox(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isSelected ? Colors.black : Colors.blueGrey,
                            ),
                            onPressed: () {
                              controller.updateselecetion(itemCategory);
                            },
                            child: Text("${itemCategory["name"]}"),
                          ),
                        );
                      }),
                ],
              ),
            ),
          );
        });
  }
}
