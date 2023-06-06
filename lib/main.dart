
import 'package:flutter/material.dart';
import 'package:mybio/utils/MyBio.dart';
import 'package:mybio/utils/splashScreen.dart';

void main() async {
  runApp(MainScreen());
}
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'HomeScreen',
        routes: {
          'HomeScreen' : (context)=> HomeScreen(),
          'MyBio': (context)=> MyBio(),

        }
    );
  }
}


