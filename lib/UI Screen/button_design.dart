import 'package:flutter/material.dart';

class Btn_ui extends StatelessWidget {
   Btn_ui({Key? key, required this.icon, required this.btnName}) : super(key: key);
  final icon;
  final String btnName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 160,
      child: OutlinedButton.icon(
       style: OutlinedButton.styleFrom(

         shape: RoundedRectangleBorder(

           borderRadius: BorderRadius.circular(10),

         ),
         side: BorderSide(width: 1 ,color: Colors.blue.shade100),

       ),
          onPressed: (){},
          icon: icon,
          label: Text(btnName),
      ),
    );
  }
}
