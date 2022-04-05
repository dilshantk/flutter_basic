

import 'package:flutter/material.dart';
import 'package:flutter_basic/assignment/login_page_next_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: ListView(
          children: [
            SizedBox(height: 70,),
            helloThere,
            SizedBox(
              height: 90,
            ),
            TextField(
              decoration: InputDecoration(labelText: "EMAIL"),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(labelText: "PASSWORD"),
            ),
            SizedBox(height: 10,),
            forgotPassword,
            SizedBox(height: 30,),
            GestureDetector(onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogNextPage()));
            },
              child:loginbutton ,
            ),
            SizedBox(height: 15,),
            facebookLogin,
            SizedBox(height: 40,),
            register

          ],
        ),
      ),
    );
  }
}



final helloThere = Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.end,
  children:  [
    Text(
      "Hello\nThere",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70,fontFamily: "Sherika"),
    ),
    Text(
      ".",
      style: TextStyle(fontSize: 110, color: Colors.greenAccent[400],fontFamily: "Pacifico"),
    )
  ],
);



final forgotPassword = Padding(
  padding: const EdgeInsets.only(top: 15),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        "Forgot Password",
        style: TextStyle(color:Colors.greenAccent[400], fontWeight: FontWeight.bold,fontFamily: "Sherika"),
      )
    ],
  ),
);



final facebookLogin = GestureDetector(onTap: (){},
    child: Container(width:double.infinity,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black,width: 3),
        color: Colors.white),child:Center(child: Row(crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,children: [Icon(FontAwesomeIcons.facebookF,size: 20,
        color: Colors.black,),Text("Log in with Facebook",style: TextStyle(fontSize:15,fontFamily: "Sherika" ),)],)),
    ));


final register =GestureDetector(onTap: (){},child: Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [Text("New to Sporty?"),
    Text("Register",style: TextStyle(color: Colors.greenAccent[400]),)],),);

final loginbutton =Container(width:double.infinity,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
    color: Colors.greenAccent[400]),child:Center(child: Text("LOGIN",style: TextStyle(
    color: Colors.white,fontSize: 15,fontFamily: "Sherika"),)),);