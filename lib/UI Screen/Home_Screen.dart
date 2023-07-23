import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taska/UI%20Screen/button_design.dart';
import 'package:taska/CardModel/list%20_produc%20t.dart';

import '../Cards/Cards1.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.sort_rounded,color: Colors.black,size: 24,),
        actions: const [
         Icon(Icons.question_answer_outlined,color: Colors.black,size: 24,),
          SizedBox(width: 30,),
          Icon(Icons.notifications_none_rounded,color: Colors.black,size: 24,),
          SizedBox(width: 25,),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom:20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.all(18.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Hello, Priya!", style: TextStyle(color: Colors.black,fontSize: 24, fontWeight:FontWeight.w500),),
                   Text("What do you wanna learn today ?", style: TextStyle(color: Colors.grey,fontSize: 16, fontWeight:FontWeight.w500),),

                 ],
               ),
             ),
            Container(
              color: Colors.blue.shade50,
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Btn_ui(icon: Icon(Icons.book,color:Colors.blue.shade500,), btnName: "Programs"),
                        Btn_ui(icon: Icon(FontAwesomeIcons.solidCircleQuestion, color: Colors.blue.shade500,), btnName: "Get help"),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Btn_ui(icon: Icon(FontAwesomeIcons.bookOpen, color: Colors.blue.shade500), btnName: " Learn"),
                        Btn_ui(icon: Icon(Icons.gif_box_outlined, color: Colors.blue.shade500,), btnName: "DD Tracker"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

             Padding(
               padding: const EdgeInsets.only(left:18,right: 18, top: 25, bottom: 15),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Programs for you",style:TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),),
                   Row(
                     children: [
                       Text("view all ",style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.grey.shade700)),
                       Icon(Icons.arrow_forward_rounded, size: 16,color:Colors.grey.shade700)
                     ],
                   ),
                 ],
               ),
             ),

            Container(
              width: double.infinity,
              height: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
          separatorBuilder: (context, _)=> SizedBox(width: 2,),
          itemCount: 6,
          itemBuilder: (context,index)=>buildCard(item: items1[index]),
      ),
            ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left:18,right: 18, top: 25, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Programs for you",style:TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),),
                    Row(
                      children: [
                        Text("view all ",style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.grey.shade700)),
                        Icon(Icons.arrow_forward_rounded, size: 16,color:Colors.grey.shade700)
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, _)=> SizedBox(width: 2,),
                  itemCount: 6,
                  itemBuilder: (context,index)=>buildCard2(item2: items2[index]),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left:18,right: 18, top: 25, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Programs for you",style:TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),),
                    Row(
                      children: [
                        Text("view all ",style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.grey.shade700)),
                        Icon(Icons.arrow_forward_rounded, size: 16,color:Colors.grey.shade700)
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, _)=> SizedBox(width: 2,),
                  itemCount: 6,
                  itemBuilder: (context,index)=>buildCard2(item2: items2[index]),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
