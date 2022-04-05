import 'dart:async';
import 'package:loading_animations/loading_animations.dart';
import 'package:flutter/material.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Image(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.13e4c4c6ee04eee2c54c0f797f7a8808?rik=J9WMEKZaGS8a0A&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_437303.png&ehk=AhBIFTs29zw8R8ZDvBPvinb469h7sIwztZhVUIOx5us%3d&risl=&pid=ImgRaw&r=0'),
            width: 100,
            height: 100,
          ),
          Text(
            "Splashy",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Bride",
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoadingFlipping.circle(
                backgroundColor: Colors.white,
                borderColor: Colors.white,
                size: 8,
              ),
              SizedBox(
                width: 5,
              ),
              LoadingFlipping.circle(
                backgroundColor: Colors.white,
                borderColor: Colors.white,
                size: 8,
              ),
              SizedBox(
                width: 5,
              ),
              LoadingFlipping.circle(
                backgroundColor: Colors.white,
                borderColor: Colors.white,
                size: 8,
              )
            ],
          )
        ],
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Showing Hello World",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: Text("After a Splash Screen",style: TextStyle(fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
