import 'package:final_exam1/applocale/applocale.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main_route.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({super.key});
  final TextEditingController latitudeController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
            "${getLang(context, "Map Page")}",
            style: TextStyle(
                color: Colors.white,
                fontSize: 28
            )
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  TextField(
                    controller: latitudeController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      hintText: "Latitude",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: longitudeController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      hintText: "Longitude",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.black,
              width: 500,
              height: 400,
              margin: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 67,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: IconButton(
                      iconSize: 60,
                      icon: const Icon(
                          Icons.location_on_sharp
                      ),
                      color: Colors.black,
                      onPressed: () async {
                        final latitude = latitudeController.text;
                        final longitude = longitudeController.text;
                        final Uri url = Uri.parse('https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 100,
                    height: 67,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: IconButton(
                      iconSize: 60,
                      icon: const Icon(
                          Icons.home
                      ),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
