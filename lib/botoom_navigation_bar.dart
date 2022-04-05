import 'package:flutter/material.dart';


class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage2(),);
  }
}

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int mycurrentindex = 0;
  List<Widget> items = [
    Text('Home page'),
    Text('Setting'),
    Text('Chats')
  ];
  void taponitem(int index){
    setState(() {
      mycurrentindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomNavigation'),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("you selected comment option"),
                action: SnackBarAction(label: "Undo", onPressed: (){}),));
            },
            icon: Icon(Icons.comment),
            tooltip: "comment here",
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info),
            tooltip: "info",
          )
        ],),
      body: Center(child: items.elementAt(mycurrentindex),),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon:Icon(Icons.settings),label:"Settings"),
        BottomNavigationBarItem(icon:Icon(Icons.chat),label:"Chats"),
      ],
        currentIndex: mycurrentindex,
        onTap: taponitem,
      ),
    );
  }
}
