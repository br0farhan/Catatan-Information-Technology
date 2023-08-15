import 'package:flutter/material.dart';

// TODO : Media Query berfungsi untuk ukuran dari gambar,icon,text menjadi responsive disemua layar handphone

class MediaqueryView extends StatelessWidget {
  const MediaqueryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Icon(Icons.developer_board,
                size: MediaQuery.of(context).size.width * 0.1),
            const Icon(
              Icons.developer_board,
              size: 60,
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
    );
  }
}
