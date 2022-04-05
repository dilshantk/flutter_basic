import 'package:flutter/material.dart';


class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Login')),
          ),
          body: Center(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                inputEmail,
                inputPassword,
                buttonLogin,
                buttonForgotPassword,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final inputEmail = Padding(
  padding: EdgeInsets.only(bottom: 10,top: 150),
  child: TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
  ),
);

final inputPassword = Padding(
  padding: EdgeInsets.only(bottom: 20),
  child: TextField(
    keyboardType: TextInputType.text,
    obscureText: true,
    decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
  ),
);

final buttonLogin = Padding(
  padding: EdgeInsets.only(bottom: 5),
  child: ButtonTheme(
    height: 56,
    child: RaisedButton(
      child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20)),
      color: Colors.black87,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () => {},
    ),
  ),
);

final buttonForgotPassword = FlatButton(
    child: Text(
      'Forgot Password',
      style: TextStyle(color: Colors.grey, fontSize: 16),
    ),
    onPressed: null);