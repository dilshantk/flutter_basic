import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStack extends StatefulWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Container(width: 250,height: 250,color: Colors.black,
        child: Stack(children: [Container(width:200,height:200,color: Colors.green,),
          Container(width:300,height:100,color: Colors.yellow,),],
        alignment: AlignmentDirectional.bottomStart,fit: StackFit.loose,),
      ),
    ),);
  }
}


