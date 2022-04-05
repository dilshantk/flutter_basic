import 'package:flutter/material.dart';

class MyLogin2 extends StatelessWidget {
  MyLogin2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children:[ Column(
          children: [
            Container(child: Container(child: Icon(Icons.menu,color:Colors.white,size: 50,)),
              width: double.infinity,
              height: height * .4,
              decoration: BoxDecoration(color: Colors.deepOrange,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90))),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
              boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5,spreadRadius: 2)],
              color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left:10,right: 10),
                child: TextField(decoration: InputDecoration(icon: Icon(Icons.email),hintText: "Email"),),
              ),),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(width: double.infinity,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                  boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5,spreadRadius: 2)],
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: TextField(decoration: InputDecoration(icon: Icon(Icons.vpn_key),hintText: "Password"),),
              ),),
            )
            ,Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [Text("Forgot Password?", style: TextStyle(color: Colors.grey[600]),)],),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(height: 50,width:double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                  boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5,spreadRadius: 2)],
                  color: Colors.deepOrange),
                child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white),)),),
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.center,children:[Text("Don't have an account?", style: TextStyle(color: Colors.grey[600])),
            Text("Register", style: TextStyle(color: Colors.deepOrange))]),
            SizedBox(height: 30,)

          ],
        ),
        Positioned(top:260,right:20,child: Text("Login",style:TextStyle(color: Colors.white,fontSize: 20)))]
      ),
    );
  }
}
