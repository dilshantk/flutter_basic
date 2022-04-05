import 'package:flutter/material.dart';


class MyPositioned extends StatelessWidget {
  const MyPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Container(width: 300,height: 500,color: Colors.black,
        child: Stack(children: [Positioned(child: Container(width: 200,height: 200,
        color: Colors.blue,),top: 100,left: 100,),
          Positioned(child:Container(width: 200,height: 200,color: Colors.yellow,),top: 120,left: 120,),
          Positioned(child:Container(width: 200,height: 200,color: Colors.red,),top: -40,left: -40,)
        ],),
      ),
    ),);
  }
}
