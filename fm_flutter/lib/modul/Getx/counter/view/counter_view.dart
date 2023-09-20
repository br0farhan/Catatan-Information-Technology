import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/counter/controller/counter_controller_getx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterControllerGetx>(
        init: CounterControllerGetx(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Counter"),
              actions: const [],
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "${controller.counter}",
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            controller.updateCounter();
                          },
                          child: const Text("Update"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            controller.minusCounter();
                          },
                          child: const Text("Kurangin"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
