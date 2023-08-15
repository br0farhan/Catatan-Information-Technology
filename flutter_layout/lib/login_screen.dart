import 'package:flutter/material.dart';
import 'package:flutter_layout/dashboard_view.dart';
import 'package:flutter_layout/layout_phone_view.dart';
import 'package:flutter_layout/mediaquery_view.dart';
import 'package:flutter_layout/orientation_phone_view.dart';
import 'package:flutter_layout/wrap_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 8),
        child: Wrap(
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashboardView()),
                  );
                },
                child: Text(
                  "(Layout)",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                )),
            const SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WrapView()),
                  );
                },
                child: Text(
                  "(Wrap)",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                )),
            const SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MediaqueryView()),
                  );
                },
                child: Text(
                  "(Media Query)",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                )),
            const SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LayoutPhoneView()),
                  );
                },
                child: Text(
                  "(Layout Builder Phone)",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                )),
                 const SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrientationPhoneView()),
                  );
                },
                child: Text(
                  "(Orientation Builder Phone)",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                )),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ElevatedButton(
          onPressed: () {
            // TODO : Di print ini nanti di kanan button munculin perubahan data lalu ada button lagi untuk clearnya
            String message = "text";
            print(message);
          },
          child: const Text("Save print"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              backgroundImage: const NetworkImage(
                "https://i.ibb.co/QrTHd59/woman.jpg",
              ),
            ),
            title: const Text("Cahyo Uyeee"),
            subtitle: const Text("Programmer PHP"),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              backgroundImage: const NetworkImage(
                "https://i.ibb.co/xgwkhVb/740922.png",
              ),
            ),
            title: const Text("Apple"),
            subtitle: const Text("15 USD"),
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
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 9.0,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "1",
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
                        onPressed: () {},
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
        ),
      ),
    ]);
  }
}
