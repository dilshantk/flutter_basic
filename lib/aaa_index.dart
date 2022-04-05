import 'package:flutter/material.dart';
import 'package:flutter_basic/list_demo.dart';

class MyIndex extends StatelessWidget {
  const MyIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myList =["MyList"];
    return Scaffold(appBar: AppBar(title: Text("INDEX"),),
      body: ListView.builder(itemCount: myList.length,itemBuilder:(context, index) => ListTile(
        title: GestureDetector(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyList()));
        },
            child: Center(child: Text(myList[index],style: TextStyle(fontSize: 30),))),
      )));
  }
}
