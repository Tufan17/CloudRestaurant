import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/Menu/hamburger.dart';
import 'package:untitled1/Menu/pizza.dart';
import 'package:untitled1/Menu/yemek.dart';

import 'drawer.dart';

int al = 0;

class PageYan extends StatefulWidget {
  const PageYan({Key? key}) : super(key: key);

  @override
  _PageYanState createState() => _PageYanState();
}

class _PageYanState extends State<PageYan> with SingleTickerProviderStateMixin {
  double _angel = 0.0;
  bool Rresimleri = false;
  bool GununMenusuu = false;
  bool menu = false;
  bool SepetEkrann = false;
  int gun=0;
  int total=0;
  int a=0;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
     var rng = new Random();
    for (var i = 0; i < 1; i++) {
      gun=rng.nextInt(6);
      print(gun);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cloud Restaurant",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[400]),
            ),
            IconButton(
              onPressed:(){
                print(total);
                setState(() {
                  Sepet.isEmpty?_showSepet():SepetEkrann=!SepetEkrann;
                  total=0;
                  if(SepetFiat.length!=0){
                    for(int i=0;i<SepetFiat.length;i++){
                      total=SepetFiat[i]+total;
                    }
                  }
                });
              },
              icon: Stack(
                children: [
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(5),
                            color: Colors.red,
                          ),
                          child: Text(
                            al == 0 ? "" : al.toString(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))),
                  Icon(SepetEkrann==true?Icons.keyboard_arrow_up:Icons.shopping_basket_outlined, size: 30,color:SepetEkrann==true?Colors.red:Colors.black,),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _angel = _angel + 0.1;
                });
              },
              icon: Transform.rotate(
                  angle: _angel,
                  child: Icon(Icons.settings, size: 30)),
            ),
          ],
        ),
      ),
      drawer:NavigationDrawer(),
      body: Container(
        color: Colors.greenAccent,
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(

                  child: Container(
                    padding: EdgeInsets.all(10),
                      height: 150,
                      child: Lottie.asset("assets/animation/sun.json"))),
              Container(
                alignment: Alignment.bottomCenter,
                child: Lottie.asset("assets/animation/cicek.json"),
              ),
              SafeArea(
                child: ListView(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 5.0, left: 5, top: 20),
                      child: Container(
                        height: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 75),
                      child: Container(
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                "Menü",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: PageView(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Hamburger()));
                                          },
                                          child: Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white54,
                                            ),
                                            child: Column(
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.hamburger,
                                                  size: 50,
                                                ),
                                                Text("Hamburger"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Pizza()));
                                          },
                                          child: Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white54,
                                            ),
                                            child: Column(
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.pizzaSlice,
                                                  size: 50,
                                                ),
                                                Text("Pizza"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Yemek()));
                                          },
                                          child: Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white54,
                                            ),
                                            child: Column(
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.fish,
                                                  size: 50,
                                                ),
                                                Text("Yemek"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white54,
                                          ),
                                          child: Column(
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.cocktail,
                                                size: 50,
                                              ),
                                              Text("Soğuk içecek"),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white54,
                                          ),
                                          child: Column(
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.coffee,
                                                size: 50,
                                              ),
                                              Text("Sıcak içecek"),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white54,
                                          ),
                                          child: Column(
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.candyCane,
                                                size: 50,
                                              ),
                                              Text("Tatlı"),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 50, left: 10),
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              Rresimleri = !Rresimleri;
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: Colors.black),
                              ),
                              child: Text("  Restaurant Resimleri  ↓  ",style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),)),
                        )),
                    if (Rresimleri == true)
                      Container(
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: PageView(
                            controller: PageController(viewportFraction: 0.8),
                            children: [
                              Container(                              padding: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/image/res1.jpg"),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/image/res2.jpg"),
                              ),
                              Container(                              padding: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/image/res3.jpg"),
                              ),
                              Container(                              padding: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/image/res4.jpeg"),
                              ),
                              Container(                              padding: EdgeInsets.all(5),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Image.asset("assets/image/res5.jpg"),
                              ),
                            ],
                          ),
                        ),
                      ),

                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: TextButton(onPressed: (){
                        setState(() {
                          GununMenusuu=!GununMenusuu;
                        });
                      },child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 1,color: Colors.black),
                          ),
                          child: Text(" Günün Menüsü  ↓  ",style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),))),
                    ),
                    if(GununMenusuu==true)
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: YMap(),
                      ),
                  ],
                ),
              ),
              if(SepetEkrann==true)
                Hero(
                  transitionOnUserGestures: true,
                  tag: "das",
                  child: Container(
                    padding: EdgeInsets.only(top: 100,bottom: 100,left: 50,right: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                        gradient:LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors:[Colors.greenAccent,Colors.blue,],
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 10,
                            child: ListView.builder(
                              padding: EdgeInsets.all(10),
                              itemCount: Sepet.length,
                              itemBuilder: (context, index) {
                                print(index);
                                return ListTile(
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text((index+1).toString()+" -   "+Sepet[index]),
                                      Text(SepetFiat[index].toString()+"TL"),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(left: 50,right: 50),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text("Toplam"),
                                  Text(total.toString()+" Tl"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: TextButton(
                                    onPressed: (){

                                    },
                                    child: Text("Öde",style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                  ),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: (){
                                      setState(() {
                                        Sepet.clear();
                                        SepetFiat.clear();
                                        SepetEkrann=false;
                                        al=0;
                                        total=0;
                                      });
                                    },
                                    child: Text("Sil",style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
  YMap(){
    Map<String,String> Menu1=Map();
    Map<String,String> Menu2=Map();
    Map<String,String> Menu3=Map();
    Map<String,String> Menu4=Map();
    Map<String,String> Menu5=Map();
    Map<String,String> Menu6=Map();
    Map<String,String> Menu7=Map();

    Menu1["Tatli"]="Sufle";
    Menu1["Çorba"]="Mercimek";
    Menu1["Ana Yenek"]="Tavuk Pirzola";
    Menu1["Ara Yenek"]="Makarna";

    Menu2["Tatli"]="Çilekli Muhallebi";
    Menu2["Çorba"]="Çeşmi Nigar Çorbası";
    Menu2["Ana Yenek"]="Tavuk Şiş";
    Menu2["Ara Yenek"]="Erişte Pilav";

    Menu3["Tatli"]="Çikolata Soslu İrmik Tatlısı";
    Menu3["Çorba"]="Havuç Çorbası";
    Menu3["Ana Yenek"]="Ispanaklı Kıymalı Makarna";
    Menu3["Ara Yenek"]="Mantar Kızartması";

    Menu4["Tatli"]="Fındıkpare Tatlısı";
    Menu4["Çorba"]="Terbiyeli Şehriye Çorbası";
    Menu4["Ana Yenek"]="Tencerede Etli Kuru Fasulye";
    Menu4["Ara Yenek"]="Pirinç Pilavı";

    Menu5["Tatli"]="Sütsüz İrmik Helvası";
    Menu5["Çorba"]="Yoğurtlu Yeşil Mercimek Çorbası";
    Menu5["Ana Yenek"]="Fırında Püreli Köfte";
    Menu5["Ara Yenek"]="Bademli Pilav";

    Menu6["Tatli"]="Hira Tatlısı";
    Menu6["Çorba"]="Yüksük Çorbası";
    Menu6["Ana Yenek"]="Zeytinyağlı Barbunyalı Taze Fasulye";
    Menu6["Ara Yenek"]="Hasbeli Aş";

    Menu7["Tatli"]="Kedi Dilli Profiterol";
    Menu7["Çorba"]="Tavuklu Un Çorbası";
    Menu7["Ana Yenek"]="İnegöl Köfte";
    Menu7["Ara Yenek"]="Patlıcanlı Pirinç Pilavı";

    List <Widget> Menu=[
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white30,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Çorba           : ${Menu1["Çorba"]}",style: TextStyle(fontSize: 25),),
            Text("Ana Yemek : ${Menu1["Ana Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Ara Yemek  : ${Menu1["Ara Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Tatlı              : ${Menu1["Tatli"]}",style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white30,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Çorba           : ${Menu2["Çorba"]}",style: TextStyle(fontSize: 25),),
            Text("Ana Yemek : ${Menu2["Ana Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Ara Yemek  : ${Menu2["Ara Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Tatlı              : ${Menu2["Tatli"]}",style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white30,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Çorba           : ${Menu3["Çorba"]}",style: TextStyle(fontSize: 25),),
            Text("Ana Yemek : ${Menu3["Ana Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Ara Yemek  : ${Menu3["Ara Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Tatlı              : ${Menu3["Tatli"]}",style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white30,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Çorba           : ${Menu4["Çorba"]}",style: TextStyle(fontSize: 25),),
            Text("Ana Yemek : ${Menu4["Ana Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Ara Yemek  : ${Menu4["Ara Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Tatlı              : ${Menu4["Tatli"]}",style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white30,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Çorba           : ${Menu5["Çorba"]}",style: TextStyle(fontSize: 25),),
            Text("Ana Yemek : ${Menu5["Ana Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Ara Yemek  : ${Menu5["Ara Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Tatlı              : ${Menu5["Tatli"]}",style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white30,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Çorba           : ${Menu6["Çorba"]}",style: TextStyle(fontSize: 25),),
            Text("Ana Yemek : ${Menu6["Ana Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Ara Yemek  : ${Menu6["Ara Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Tatlı              : ${Menu6["Tatli"]}",style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white30,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Çorba           : ${Menu7["Çorba"]}",style: TextStyle(fontSize: 25),),
            Text("Ana Yemek : ${Menu7["Ana Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Ara Yemek  : ${Menu7["Ara Yenek"]}",style: TextStyle(fontSize: 25),),
            Text("Tatlı              : ${Menu7["Tatli"]}",style: TextStyle(fontSize: 25),),
          ],
        ),
      ),

    ];
    return Menu[gun];

  }
  _showSepet() {

    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Column(
            children: [
              Center(child: Text("Sepet")),
              SizedBox(
                height: 20,
              ),

                Text("Boş"),            ],
          ),
        );
      }
    );
  }

}


final List<String> Sepet=[];
final List<int> SepetFiat=[];


