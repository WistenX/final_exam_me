import 'package:final_exam1/third_route.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'applocale/applocale.dart';
import 'main_route.dart';


class SecondPage extends StatefulWidget {


  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _webController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
            "Second Page",
            style: TextStyle(
                color: Colors.white,
                fontSize: 28
            ),
        ),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.fromLTRB(5, 20, 5, 0),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Container(
                    width: 400,
                    child: TextField(
                      controller: _webController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          filled: true,
                          focusColor: Colors.white,
                          hintText: "Web",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 400,
                    child: TextField(
                      controller: _phoneController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          filled: true,
                          focusColor: Colors.white,
                          hintText: "Phone",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              margin: const EdgeInsets.fromLTRB(5, 15, 5, 10),
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 100,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () async {
                        final url = "https://" + _webController.text.trim();
                        if (await launchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Could not launch web page")),
                          );
                        }
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(
                                  2, 6, 80, 1)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      5))
                              )
                          )

                      ),
                      child: const Text(
                        "WEB",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  SizedBox(
                    width: 100,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () async {
                        final phone = "tel:" + _phoneController.text.trim();
                        if (await launchUrl(Uri.parse(phone))) {
                          await launchUrl(Uri.parse(phone));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Could not make a call")),
                          );
                        }
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(
                                  2, 6, 80, 1)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      5))
                              )
                          )

                      ),
                      child: const Text(
                        "CALL",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Row(
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
                        icon: const Icon(Icons.home),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 100,
                      height: 67,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ThirdPage(),),
                          );
                        },
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(2, 6, 80, 1)
                            ),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5))
                                )
                            )
                        ),
                        child: const Text(
                          "NEXT",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
