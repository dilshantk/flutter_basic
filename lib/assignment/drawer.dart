import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);
  String mainProfilePic =
      "https://th.bing.com/th/id/R.3299a20e7e0e2cfc4f9e0cccabdfc562?rik=XMiCJ5%2fdNUEFSQ&riu=http%3a%2f%2fwww.hindustantimes.com%2frf%2fimage_size_960x540%2fHT%2fp2%2f2017%2f11%2f24%2fPictures%2fbarcelona-golden-lionel-ceremony-barcelona-trophy-during_f7ec1c46-d121-11e7-ab73-d03b3a59d103.jpg&ehk=y9%2fq3yV7kBdyeOlM6bP4wRM1oQ7BU%2fc7rgncRe%2bBLtk%3d&risl=&pid=ImgRaw&r=0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:Icon(Icons.email),label:"Inbox"),
        BottomNavigationBarItem(icon:Icon(Icons.people),label:"Contacts"),
        BottomNavigationBarItem(icon:Icon(Icons.calendar_today),label:"Calendar"),
      ],
      ),
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("XYZ"),
            accountEmail: Text("someone@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(mainProfilePic),
            ),
          ),
          ListTile(
              title: Text(
                "Inbox",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
              ),
              leading: Icon(Icons.inbox),
              trailing: Container(
                child: Center(
                    child: Text(
                  "11",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )),
                width: 34,
                height: 26,
                decoration: BoxDecoration(
                    color: Colors.cyanAccent[100],
                    borderRadius: BorderRadius.circular(13)),
              )),
          ListTile(
              title: Text(
                "Draft",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
              ),
              leading: Icon(Icons.drafts),
              ),
          ListTile(
            title: Text(
              "Archive",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
            leading: Icon(Icons.archive),
          ),
          ListTile(
            title: Text(
              "Sent",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
            leading: Icon(Icons.send),
          ),
          ListTile(
            title: Text(
              "Trash",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
            leading: Icon(Icons.delete),
          ),
          Divider(thickness: 1,),
          SizedBox(height: 30,),
          ListTile(
            title: Text(
              "Settings",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
            leading: Icon(Icons.settings),
          ),

        ],
      )),
    );
  }
}
