import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main()=> runApp(MaterialApp(home: MySplash2(),));

class MySplash2 extends StatefulWidget {
  const MySplash2({Key? key}) : super(key: key);

  @override
  State<MySplash2> createState() => _MySplash2State();
}

class _MySplash2State extends State<MySplash2> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.pink,
      seconds: 6,
      navigateAfterSeconds: new SecondScreen(),
      title: Text('Splashy',textScaleFactor: 3,style: TextStyle(fontFamily: "Bride",
          color:Colors.white ),),
      image: new Image.network('https://th.bing.com/th/id/R.13e4c4c6ee04eee2c54c0f797f7a8808?rik=J9WMEKZaGS8a0A&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_437303.png&ehk=AhBIFTs29zw8R8ZDvBPvinb469h7sIwztZhVUIOx5us%3d&risl=&pid=ImgRaw&r=0'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.white,
    );
  }
  }


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Splash")),
      body: Center(
          child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}
