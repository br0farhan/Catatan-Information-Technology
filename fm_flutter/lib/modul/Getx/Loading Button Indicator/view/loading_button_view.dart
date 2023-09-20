import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/Loading%20Button%20Indicator/controller/loading_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class LoadingButtonView extends StatelessWidget {
  const LoadingButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoadingController>(
        init: LoadingController(),
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(
                title: const Text("Loading Button"),
                actions: const [],
              ),
              body: Center(
                child: Obx(
                  () => ElevatedButton.icon(
                    onPressed: () {
                      controller.isLoading.value
                          ? null
                          : controller.uploadFile();
                    },
                    icon: controller.isLoading.value
                        ? const SizedBox(
                            height: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 1,
                            ),
                          )
                        : const Icon(Icons.upload),
                    label: Text(controller.isLoading.value
                        ? "Proses Upload"
                        : "Kirim Data"),
                  ),
                ),
              ));
        });
  }
}
