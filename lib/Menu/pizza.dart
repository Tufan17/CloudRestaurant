import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/first/secondpage.dart';

class Pizza extends StatefulWidget {
  const Pizza({Key? key}) : super(key: key);

  @override
  _PizzaState createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  bool saydur=false;
  int sayfa=0;
  double a=0.5;
  bool dur = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(milliseconds: 25), (timer) {
      if (dur == false) {
        setState(() {
          if(saydur==true){
            a=a-0.002;
            if(a<=0.5)
              saydur=!saydur;
          }
          if(saydur==false)
            a = a + 0.002;
          if(a>=1.4)
            saydur=true;

           // print(a.toString());
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Pizza",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              dur=true;
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
              colors: [Colors.red,Colors.black]),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      sayfa = value.toInt();
                      a=0.5;
                    });
                  },
                  children: [
                    Pizza1(),
                    Pizza2(),
                    Pizza3(),
                    Pizza4(),

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
                      Icon(
                        sayfa == 3 ? Icons.circle : Icons.adjust,
                        color: sayfa == 3 ? Colors.greenAccent : Colors.white,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
  Pizza1() {
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
                      child: Transform.scale(
                          transformHitTests: true,
                          scale: a,
                          //alignment: Alignment.center,
                          child: Image.asset("assets/image/mantar.png"))),
                  Text(
                    "Mantarlı Pizza",
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
                              "-Mantar",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Peynir",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Domates",
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
                              Sepet.add("Mantarlı Pizza");
                              SepetFiat.add(20);
                              al++;setState(() {
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
  Pizza2() {
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
                      child: Transform.scale(
                          transformHitTests: true,
                          scale: a,
                          //alignment: Alignment.center,
                          child: Image.asset("assets/image/supreme.png"))),
                  Text(
                    "Supreme Pizza",
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
                              "-Sosis",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Peynir",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Mantar",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Biber",
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
                              Sepet.add("Superme Pizza");
                              SepetFiat.add(25);
                              al++;setState(() {
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
  Pizza3() {
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
                      child: Transform.scale(
                          transformHitTests: true,
                          scale: a,
                          //alignment: Alignment.center,
                          child: Image.asset("assets/image/sebzeli.png"))),
                  Text(
                    "Sebzeli Pizza",
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
                              "-Kabak",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Biber",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Domates",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Fesleğen",
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
                              Sepet.add("Sebzeli Pizza");
                              SepetFiat.add(20);
                              al++;setState(() {
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
  Pizza4() {
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
                      child: Transform.scale(
                          transformHitTests: true,
                          scale: a,
                          //alignment: Alignment.center,
                          child: Image.asset("assets/image/sucuklupizza.png"))),
                  Text(
                    "Sucuklu Pizza",
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
                              "-Sucuk",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-Peynir",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "-zeytin",
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
                              Sepet.add("Sucuklu Pizza");
                              SepetFiat.add(25);
                              setState(() {
                                show();
                              });
                              al++;
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
