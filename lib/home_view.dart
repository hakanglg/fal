import 'package:flutter/material.dart';
import 'strings_list.dart';
import 'dart:math';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late int yanitNo = 0;

  void askNoChanger() {
    setState(() {
      yanitNo = Random().nextInt(5) + 1;
    });
  }

  void paraNoChanger() {
    setState(() {
      yanitNo = Random().nextInt(5) + 6;
    });
  }

  void dailyNoChanger() {
    setState(() {
      yanitNo = Random().nextInt(5) + 11;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        backgroundColor: Colors.purple[500],
        title: Text("GÜNÜN FALI"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 150,
                margin: EdgeInsets.only(bottom: 30),
                child: Image.asset("assets/falci.png")),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: Column(
                children: [
                  ListTile(
                    onTap: askNoChanger,
                    leading: Icon(Icons.favorite, color: Colors.pink),
                    title: Text(
                      "AŞK DURUMU",
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: Column(
                children: [
                  ListTile(
                    onTap: paraNoChanger,
                    leading: Icon(Icons.monetization_on, color: Colors.green),
                    title: Text(
                      "PARA DURUMU",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: Column(
                children: [
                  ListTile(
                    onTap: dailyNoChanger,
                    leading: Icon(Icons.wb_incandescent, color: Colors.blue),
                    title: Text(
                      "GÜNLÜK TAVSİYE",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: Text(yanitlar[yanitNo],
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center),
              ),
            )
          ],
        ),
      ),
    );
  }
}
