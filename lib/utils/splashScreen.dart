import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacementNamed(context, "MyBio");

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.amber,
          body: Stack(children:   [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Center(
                child: Lottie.asset(
                    "assets/logo.json",
                    width: 300,height: 300
                ),
              ),
            ),
            Center(
              child: Padding(

                  padding: EdgeInsets.only(top: 220),
                  child: Text("Welcome to MyBio",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Raleway',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          fontSize: 30))),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 700),
                child: Text(
                  "version: 1.0.0.1 ",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      fontSize: 17

                  ),
                ),
              ),
            ),

          ])),
    );
  }
}
