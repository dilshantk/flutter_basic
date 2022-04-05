import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListDemo'),
        ),
        body: ListDemo(),
      ),
    );
  }
}

class ListDemo extends StatelessWidget {
  const ListDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyListView(context);
  }
}

Widget MyListView(BuildContext context) {
  // final countries=['India','Japan','USA','China'];
  return
    //   ListView.builder(itemCount: countries.length,itemBuilder:(context, index) => ListTile(
    //   title: Text(countries[index]),
    // ));

    ListView(
      children: [
        ListTile(
          title: Text('January'),
          leading: Icon(Icons.star),
        ),
        ListTile(
          title: Text('feb'),
        ),
        ListTile(
          title: Text('march'),
        )
      ],
    );
}
