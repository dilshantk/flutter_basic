import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastEx extends StatelessWidget {
  const ToastEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(onPressed: (){
            Fluttertoast.showToast(msg: "Play Music",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.TOP,
                textColor: Colors.yellow);
          }, child: Icon(Icons.play_arrow)),
        ),
      ),
    );
  }
}
