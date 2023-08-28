import 'package:consume_api/modul/list_users/controller/list_user_controller.dart';
import 'package:flutter/material.dart';

class ListUserView extends StatefulWidget {
  const ListUserView({Key? key}) : super(key: key);

  Widget build(context, ListUserController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("List User"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: controller.data.length,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.data[index];
                    item["qty"] ??= 0;
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(item["avatar"]),
                        ),
                        title: Text(item["first_name"]),
                        subtitle: Text(item["last_name"]),
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
                                  style: TextStyle(
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
                                    icon: const Icon(
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
            const SizedBox(
              height: 75,
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: const Text(
                  "Disini memanggil isi datanya menggunakan json yang dibuat di controller (list_user_controller) dan memanggilnya di view ini.",
                  style: TextStyle(fontSize: 10.0, fontStyle: FontStyle.italic),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<ListUserView> createState() => ListUserController();
}
