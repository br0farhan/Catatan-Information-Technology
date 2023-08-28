import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/single_selection/controller/single_selection_getx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SingleSelectionView extends StatelessWidget {
  const SingleSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingleSelectionGetx>(
        init: SingleSelectionGetx(),
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Selection Index : ${controller.selectionIndex}"),
                actions: const [],
              ),
              body: Column(
                children: [
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      itemCount: controller.cabor.length,
                      itemBuilder: (context, index) {
                        var item = controller.cabor[index];
                        bool selected = controller.selectionIndex == index;
                        return Card(
                          color: selected ? Colors.black : Colors.white,
                          child: SizedBox(
                            width: 120,
                            child: ListTile(
                              onTap: () {
                                controller.updateIndex(index);
                              },
                              title: Center(
                                child: Text(
                                  "$item",
                                  style: TextStyle(
                                    color: selected ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      itemCount: controller.cabor.length,
                      itemBuilder: (context, index) {
                        var item = controller.cabor[index];
                        bool selected = controller.selectionIndex == index;
                        return Card(
                          color: selected ? Colors.black : Colors.white,
                          child: ListTile(
                            onTap: () {
                              controller.updateIndex(index);
                            },
                            title: Text(
                              "$item",
                              style: TextStyle(
                                color: selected ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ));
        });
  }
}
