import 'package:flutter/material.dart';
import 'package:mybio/utils/CustomCard.dart';

class MyBio extends StatefulWidget {
  const MyBio({Key? key}) : super(key: key);

  @override
  State<MyBio> createState() => _MyBioState();
}


class _MyBioState extends State<MyBio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "MyBIO",
          style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [Color(0xffEFFF13), Color(0xffFF9913)]),
        ),
        child:  const Column(
          children: [
            SizedBox(
              height: 150,
            ),
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage("assets/IMG-20221005-WA0009.jpg"),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "\" My Name is yahye and Im skilled Flutter programmer \n "
                "\t with expertise in Dart and the Flutter framework.\" ",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
              endIndent: 50,
              indent: 50,
            ),
            SizedBox(
              height: 30,
            ),
            CustomCard(
              LeadingIcon: Icons.phone_android_outlined,
              titel: "Mobile",
              Subtitel: "0592670079",
              trealingIcon: Icons.phone,
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard(
              LeadingIcon: Icons.email_outlined,
              titel: "Email",
              Subtitel: "Yahyed3@gmail.com",
              trealingIcon: Icons.email,
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard(
              LeadingIcon: Icons.person_rounded,
              titel: "Location",
              Subtitel: "Gaza",
              trealingIcon: Icons.map_outlined,
            )
          ],
        ),
      ),
    );
  }
}
