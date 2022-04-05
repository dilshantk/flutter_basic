import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LakeUi extends StatelessWidget {
  const LakeUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: Scaffold(
      body: ListView(children: [
        Container(height: 240,width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://shepherdtraveller.com/wp-content/uploads/2021/04/oeschinensee-camping-Lakes-in-Switzerland-1536x1024.jpg"),
            fit: BoxFit.cover)),),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Oeschinen Lake Campground",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(height: 8,),
                Text("Kandersteg Switzerland",style: TextStyle(color: Colors.grey),)],),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(Icons.star,color: Colors.red,),
              ),
              Text("41")
            ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Column(children: [IconButton(onPressed: (){}, icon:Icon(Icons.phone,color:
            Colors.blue,)),Text("CALL",style: TextStyle(color: Colors.blue,fontSize: 12),)],),
              Column(children: [IconButton(onPressed: (){}, icon:Icon(Icons.navigation,color:
              Colors.blue,)),Text("ROUTE",style: TextStyle(color: Colors.blue,fontSize: 12),)],),
              Column(children: [IconButton(onPressed: (){}, icon:Icon(Icons.share,color:
              Colors.blue,)),Text("SHARE",style: TextStyle(color: Colors.blue,fontSize: 12),)],)],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(" lake in the Bernese Oberland, Switzerland, 4 kilometres (2.5 mi) east of Kandersteg in the Oeschinen valley. At an elevation of 1,578 metres (5,177 ft), it has a surface area of 1.1147 square kilometres (0.4304 sq mi). Its maximum depth is 56 metres (184 ft).The lake was created by a giant landslide and is fed through a series of mountain creeks and drains underground. The water then resurfaces as the Oeschibach. Part of it is captured for electricity production and as water supply for Kandersteg."),
        )

      ],),
    ),);
  }
}
