import 'package:flutter/material.dart';

import '../CardModel/list _produc t.dart';


Widget buildCard({
  required CardItem1 item,
}) => Container(
  margin: EdgeInsets.only(left: 20,top: 10),
  width:250,
  height:250,
  decoration: BoxDecoration(
    boxShadow:[
      BoxShadow(
        color: Colors.black12,
        blurRadius: 0.2,
        spreadRadius: 0.5,
      ),
    ],
    borderRadius: BorderRadius.circular(20.0),
    color: Colors.white24,
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Expanded(
        child: AspectRatio(
          aspectRatio: 105,
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.network(

              item.urlImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const SizedBox(height:15,),
     Padding(
       padding: const EdgeInsets.only(left: 12.0, bottom: 12),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             item.title,
             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.blue),
           ),
           const SizedBox(height:18,),
           Text(
             item.maintitle,
             style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: Colors.black),
           ),
           const SizedBox(height: 18,),
           Row(
             children: [
               Text(
                 item.sbtitle,
                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey.shade600),
               )
             ],
           )
         ],
       ),
     )
    ],
  ),
);

Widget buildCard2({
  required CardItem2 item2,
}) => Container(
  margin: EdgeInsets.only(left: 20,top: 10),
  width:250,
  height:250,
  decoration: BoxDecoration(
    boxShadow:[
      BoxShadow(
        color: Colors.black12,
        blurRadius: 0.2,
        spreadRadius: 0.5,
      ),
    ],
    borderRadius: BorderRadius.circular(20.0),
    color: Colors.white24,
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Expanded(
        child: AspectRatio(
          aspectRatio: 105,
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.network(

              item2.urlImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const SizedBox(height:15,),
      Padding(
        padding: const EdgeInsets.only(left: 12.0, bottom: 12,right: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item2.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.blue),
            ),
            const SizedBox(height:18,),
            Text(
              item2.maintitle,
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item2.sbtitle,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey.shade600),
                ),
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Center(child: Text(item2.txt,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blue),)),
                )
              ],
            )
          ],
        ),
      )
    ],
  ),
);
