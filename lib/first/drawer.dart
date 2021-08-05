import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.greenAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            Container(
                height: 150,
                child: Image.asset("assets/image/cloud.png")),
            Container(
                padding:EdgeInsets.all(50),
                child: Text("Cloud Restaurant",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),)),
            Table(
              children: [
                TableRow(
                    children:[
                  Container(
                    padding:EdgeInsets.all(8),
                    child: Text("E-mail",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(
                      padding:EdgeInsets.all(8),

                      child: Text("cloudRestaurant@tufan.com"),),
                ]),
                TableRow(children:[
                 SizedBox(height: 20,),
                 SizedBox(height: 20,),
                ]),
                TableRow(children:[
                  Container(
                    padding:EdgeInsets.all(8),
                    child: Text("Cep",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(
                      padding:EdgeInsets.all(8),
                      child: Text("+90525466846")),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
