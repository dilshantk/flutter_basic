import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  Color colour=Colors.white;
  MyWidget({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(color:colour ,height: 300,width: 300,));
  }
}
