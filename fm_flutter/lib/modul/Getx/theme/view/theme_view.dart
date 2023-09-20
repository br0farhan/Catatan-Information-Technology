import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/theme/controller/theme_controller.dart';
import 'package:get/get.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        init: ThemeController(),
        builder: (controller) {
          controller.view = this;
          return Theme(
            data: controller.theme,
            child: Scaffold(
                appBar: AppBar(
                  title: const Text("Dashboard"),
                  actions: const [],
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          controller.useLightTheme();
                        },
                        child: const Text(
                          "Light Theme",
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        onPressed: () {
                          controller.useDarkTheme();
                        },
                        child: const Text(
                          "Dark Theme",
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                     
                    ],
                  ),
                )),
          );
        });
  }
}
