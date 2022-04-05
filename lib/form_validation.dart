
import 'package:flutter/material.dart';

class MyFormValidation extends StatelessWidget with InputValidationMixin {
  final formGlobalKey = GlobalKey <FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("LOGIN FORM"),),
    body: Form(
        key: formGlobalKey,
        child: Column(
      children: [Padding(
        padding: const EdgeInsets.only(top: 30,bottom: 30),
        child: TextFormField(decoration: InputDecoration(labelText: "Email"),
        validator: (email){
          if (isEmailValid(email!)) {
            return null;
          } else {
            return 'Enter a valid email address';
          }

        },),
      ),
        Padding(
          padding: const EdgeInsets.only(top: 28.0,bottom: 30),
          child: TextFormField(maxLength: 8,decoration: InputDecoration(labelText: "Password"),
            validator: (password){
              if(isPasswordValid(password!)) {
                return null;
              } else {
                return"Enter a valid Password";
              }


            },),
        ),
        ElevatedButton(onPressed: (){
          if (formGlobalKey.currentState!.validate()) {
            formGlobalKey.currentState!.save();
            // use the email provided here
          }
        }, child: Text("LOGIN"))],
    )),);
  }
}

mixin InputValidationMixin{
  bool isPasswordValid(String password)=> password.length == 6;
  bool isEmailValid(String email) {
    String pattern = r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }
}


