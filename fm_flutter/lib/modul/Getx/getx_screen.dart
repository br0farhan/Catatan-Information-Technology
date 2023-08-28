import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/cart/view/cart_view.dart';
import 'package:fm_flutter/modul/Getx/counter/view/counter_view.dart';
import 'package:fm_flutter/modul/Getx/enabledOrDisabled/view/enabled_disabled_view.dart';
import 'package:fm_flutter/modul/Getx/multiple_selection/view/multiple_view.dart';
import 'package:fm_flutter/modul/Getx/single_selection/view/single_selection_view.dart';

class GetxScreen extends StatelessWidget {
  const GetxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Screen"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 3,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CounterView()),
                      );
                    },
                    child: const Text("Counter"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SingleSelectionView()),
                      );
                    },
                    child: const Text("Single Selection"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MultipleSelectionView()),
                      );
                    },
                    child: const Text("Multiple Selection"),
                  ),
                ],
              ),
              Wrap(
                  spacing: 3,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartView()),
                      );
                    },
                    child: const Text("Cart"),
                  ),
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const  EnabledOrDisabledView()),
                      );
                    },
                    child: const Text("Enabled Or Disabled"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
