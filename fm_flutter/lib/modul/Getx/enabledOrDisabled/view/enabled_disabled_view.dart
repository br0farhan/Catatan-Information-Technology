import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/enabledOrDisabled/controller/enabled_disabled_controller_getx.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class EnabledOrDisabledView extends StatelessWidget {
  const EnabledOrDisabledView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: EnabledOrDisabledControllergetx(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.blueGrey[900],
            body: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              suffixIcon: Icon(
                                Icons.email,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              controller.email = value;
                              controller.updateState();
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              suffixIcon: Icon(
                                Icons.password,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              controller.password = value;
                              controller.updateState();
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton.icon(
                            icon: const Icon(Icons.login),
                            label: const Text("Login"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: controller.isValid
                                  ? Colors.black
                                  : Colors.blueGrey,
                            ),
                            onPressed: () {
                              if (controller.isValid) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("Berhasil Input Form"),
                                      actions: [
                                        TextButton(
                                          child: const Text("Close"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        )
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
