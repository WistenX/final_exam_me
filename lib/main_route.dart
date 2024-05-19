import 'dart:io';
import 'package:final_exam1/applocale/applocale.dart';
import 'package:final_exam1/second_route.dart';
import 'package:final_exam1/third_route.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
            "${getLang(context, "Main Page")}",
            style: const TextStyle(
                color: Colors.white,
                fontSize: 28
            ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Container(
                    width: 350,
                    child: TextField(
                      controller: usernameController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          filled: true,
                          focusColor: Colors.white,
                          hintText: "${getLang(context, "Username")}",
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: 350,
                    child: TextField(
                      controller: passwordController,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          focusColor: Colors.white,
                          hintText: "${getLang(context, "Password")}",
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () {
                        if(usernameController.text == 'Abdulaziz' && passwordController.text == '123456'){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                SecondPage(),
                            ),
                          );
                        }
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(2, 6, 80, 1)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5))
                              )
                          )
                      ),
                      child: Text(
                        "${getLang(context, "Login")}",
                        style: const TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 100,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () {
                        usernameController.text = '';
                        passwordController.text = '';
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(
                                  2, 6, 80, 1)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5))
                              )
                          )
                      ),
                      child: Text(
                        "${getLang(context, "Clear")}",
                        style: const TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 180,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>
                              ThirdPage()
                          ),
                        );
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(
                                  2, 6, 80, 1)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5))
                              )
                          )

                      ),
                      child: Text(
                          "${getLang(context, "GO TO MAP PAGE")}",
                        style: const TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 100,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () {
                        exit(0);
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(
                                  2, 6, 80, 1
                              )
                          ),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5))
                              )
                          )
                      ),
                      child: Text(
                          "${getLang(context, "Close")}",
                        style: const TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

