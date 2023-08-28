import 'package:flutter/material.dart';
import 'package:fm_flutter/modul/Getx/cart/controller/cart_controller_getx.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartControllerGetx>(
        init: CartControllerGetx(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Cart Screen"),
              actions: const [],
            ),
            body: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: controller.products.length,
                        itemBuilder: (contex, index) {
                          var item = controller.products[index];
                          item["qty"] ??= 0;
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                backgroundImage: NetworkImage(
                                  item["photo"],
                                ),
                              ),
                              title: Text("${item["product_name"]}"),
                              subtitle: Text("${item["price"]} USD"),
                              trailing: SizedBox(
                                width: 120.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.blueGrey,
                                      radius: 12.0,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {
                                            controller.decreaseQty(item);
                                          },
                                          icon: const Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                            size: 9.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "${item["qty"]}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.blueGrey,
                                      radius: 12.0,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {
                                            controller.increaseQty(item);
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 9.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
