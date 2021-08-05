import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/first/secondpage.dart';

class Hamburger extends StatefulWidget {
  @override
  _HamburgerState createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  double a = 0.1;
  int sayfa = 0;
  bool dur = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(milliseconds: 25), (timer) {
      if (dur == false) {
        setState(() {
          a = a + 0.002;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Hamburger",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              dur = true;
              print("dur");
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.greenAccent, Colors.black]),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      sayfa = value.toInt();
                      a=0;
                    });
                  },
                  children: [
                    Cheeseburger(),
                    TavukBurger(),
                    KuzuRaguBurger(),
                  ]),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        sayfa == 0 ? Icons.circle : Icons.adjust,
                        color: sayfa == 0 ? Colors.greenAccent : Colors.white,
                      ),
                      Icon(
                        sayfa == 1 ? Icons.circle : Icons.adjust,
                        color: sayfa == 1 ? Colors.greenAccent : Colors.white,
                      ),
                      Icon(
                        sayfa == 2 ? Icons.circle : Icons.adjust,
                        color: sayfa == 2 ? Colors.greenAccent : Colors.white,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Cheeseburger() {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.black, Colors.black])),
              padding: EdgeInsets.only(top: 0, right: 0),
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Transform.rotate(
                          angle: a,
                          alignment: Alignment.center,
                          child: Image.asset("assets/image/Cheeseburger.png"))),
                  Text(
                    "Cheeseburger",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(left: 30),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "-Köfte",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Cheddar Peyniri",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Domates",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Marul",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Soğan",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.yellow,
                                Colors.purple,
                                Colors.brown,
                                Colors.red,
                                Colors.yellow
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Sepet.add("Cheeseburger");
                              SepetFiat.add(10);
                              al++;
                             setState(() {
                               show();
                             });
                            },
                            child: Text(
                              "Al",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TavukBurger() {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.black, Colors.black])),
              padding: EdgeInsets.only(top: 0, right: 0),
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Transform.rotate(
                          angle: a,
                          alignment: Alignment.center,
                          child: Image.asset("assets/image/TavukBurger.png"))),
                  Text(
                    "Tavuk Burger",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(left: 30),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "-Tavuk",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Sarımsak",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Domates",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Marul",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Köri",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.yellow,
                                Colors.purple,
                                Colors.brown,
                                Colors.red,
                                Colors.yellow
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: TextButton(
                            onPressed: () {
                              al++;
                              Sepet.add("Tavuk Burger");
                              SepetFiat.add(15);
                              setState(() {
                                show();
                              });
                            },
                            child: Text(
                              "Al",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  KuzuRaguBurger() {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.black, Colors.black])),
              padding: EdgeInsets.only(top: 0, right: 0),
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Transform.rotate(
                      angle: a,
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/image/KuzuRaguBurger.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "Kuzu Ragu Burger",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(left: 30),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "-Kuzu eti",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Sarımsak",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Tereyağı",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Domates",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Marul",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Pastırma",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.yellow,
                                Colors.purple,
                                Colors.brown,
                                Colors.red,
                                Colors.yellow
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: TextButton(
                            onPressed: () {
                              al++;
                              SepetFiat.add(17);
                              Sepet.add("Kuzu Ragu Burger");
                              setState(() {
                                show();
                              });
                            },
                            child: Text(
                              "Al",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  show(){
    showDialog(context: context, builder: (BuildContext context){
      return Lottie.asset("assets/animation/tick.json");
    });

    Future.delayed(Duration(milliseconds: 1900),(){
      Navigator.pop(context);
    });
  }
}
