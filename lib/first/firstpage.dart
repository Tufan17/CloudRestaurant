import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/first/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TimeOfDay TarihSaat = TimeOfDay.now();
  var Tarih = DateTime.now();
  var Gun;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        TarihSaat = TimeOfDay.now();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.greenAccent],
                  ),
                ),
              ),
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image.asset("assets/image/cloud.png"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
              Center(
                child: Lottie.asset("assets/animation/elmas.json"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          height: 30,
                          child:
                              Lottie.asset("assets/animation/right (2).json",repeat: false)),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[800],
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  TarihSaat.hour < 10
                                      ? "0" + TarihSaat.hour.toString()
                                      : TarihSaat.hour.toString(),
                                  style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  TarihSaat.minute < 10
                                      ? "0" + TarihSaat.minute.toString()
                                      : TarihSaat.minute.toString(),
                                  style: TextStyle(
                                      fontSize: 60,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              DateFormat("EEEE").format(Tarih),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              DateFormat.yMMMd().format(Tarih),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          PageYan(),
        ],
      ),
    );
  }
}
