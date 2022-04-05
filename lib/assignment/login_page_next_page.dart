
import 'package:flutter/material.dart';

class LogNextPage extends StatefulWidget {
  const LogNextPage({Key? key}) : super(key: key);

  @override
  State<LogNextPage> createState() => _LogNextPageState();
}

class _LogNextPageState extends State<LogNextPage> {
  @override
  Widget build(BuildContext context) {
    final names=["Alex Fawad","Walker","Harry Potter","Profersor Snep","Dilshan"];
    return Scaffold(appBar: AppBar(title:Text("Header Title"),leading: Icon(Icons.menu),
      actions: [Center(child: GestureDetector(child: Text("Logout"),))],),
      body:Container(color: Colors.blueGrey[600],
        child:ListView.builder(itemCount: names.length,itemBuilder: (context, index) => CustomBox(name: names[index]))) ,);
  }
}

class CustomBox extends StatelessWidget {
  late String name;
  CustomBox({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(width: double.infinity,height: 130,color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Name: $name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text("Decription: You may go now!!",style: TextStyle(color: Colors.grey),),
              Spacer(),
              Row(mainAxisAlignment: MainAxisAlignment.end,children: [GestureDetector(child: Tooltip(message: "Accepted",
                showDuration: Duration(seconds: 10),
                child: Text("Accept",style:
                TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),),
              )),
                SizedBox(width: 15,),
                GestureDetector(child: Text("Reject",style:
                TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]))),
              ],)],),
        ) ,),
    );
  }
}


