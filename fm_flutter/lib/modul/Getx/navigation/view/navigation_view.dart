import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/navigation/controller/navigation_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NavigationView extends StatelessWidget {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
        init: NavigationController(),
        builder: (controller) {
          controller.view = this;
          return Scaffold(
              body: Stack(
            children: [
              Positioned(
                left: 25,
                top: 50,
                child: Text(
                  "${controller.selectionIndex}",
                  style: const TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 20,
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(color: Colors.black),
                    child: Row(
                      children:
                          List.generate(controller.menuList.length, (index) {
                        var item = controller.menuList[index];
                        bool selectionIndex =
                            controller.selectionIndex == index;
                        return Expanded(
                            child: InkWell(
                          onTap: () {
                            controller.updateIndex(index);
                          },
                          child: Center(
                            child: AnimatedScale(
                              duration: const Duration(milliseconds: 900),
                              scale: selectionIndex ? 2.0 : 1.0,
                              child: Text(
                                "$item",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ));
                      }),
                    )),
              )
            ],
          ));
        });
  }
}
