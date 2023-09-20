import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/animation/controller/animation_controller_getx.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class AnimationView extends StatelessWidget {
  const AnimationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimationControllerGetx>(
        init: AnimationControllerGetx(),
        builder: (controller) {
          controller.view = this;
          return Scaffold(
            appBar: AppBar(
              title: const Text("Animation"),
              actions: const [],
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.updateAnimation();
                      },
                      child: const Text(
                        "Klik Animation",
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                    const Divider(),
                    AnimatedContainer(
                      duration: const Duration(
                        milliseconds: 9000,
                      ),
                      child: Container(
                        height: 100,
                        width: controller.isAnimated ? 300 : 100,
                        color: Colors.amber[900],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
