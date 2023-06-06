import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      required this.LeadingIcon,
      required this.titel,
      required this.Subtitel,
      required this.trealingIcon})
      : super(key: key);

  final IconData LeadingIcon;
  final String titel;
  final String Subtitel;
  final IconData trealingIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.symmetric(horizontal: 20),

      elevation: 5,
      color: Color(0XFFA5F9FF),
      // child: Padding(
      //   padding: const EdgeInsets.all(10),
      //   child: Row(
      //     children: [
      //       Icon(LeadingIcon),
      //       SizedBox(width: 20,),
      //       Column(
      //         children: [
      //           Text(titel),
      //           SizedBox(height: 5,),
      //           Text(Subtitel,style: TextStyle(
      //             color: Colors.grey
      //           ),)
      //         ],
      //       ),
      //       Spacer(),
      //       IconButton(onPressed: (){
      //       }, icon: Icon(trealingIcon))
      //     ],
      //   ),
      // ),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(top:5),
          child: Icon(LeadingIcon),
        ),
        title: Text(titel),
        subtitle: Text(Subtitel),
        trailing: IconButton(onPressed: (){
          if(titel=="Mobile") {
            print("Calling");
          }else if(titel=="Email"){
            print("Email has been sent");
          }else if(titel=="Location") {
            print("Opening Map");
          }
        },icon:Icon(trealingIcon)),
      ),

    );
  }
}
