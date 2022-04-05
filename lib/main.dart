import 'package:flutter/material.dart';
import 'package:flutter_basic/aaa_index.dart';
import 'package:flutter_basic/assignment/drawer.dart';
import 'package:flutter_basic/assignment/login_page.dart';
import 'package:flutter_basic/assignment/login_page2.dart';
import 'package:flutter_basic/assignment/login_page_next_page.dart';
import 'package:flutter_basic/botoom_navigation_bar.dart';
import 'package:flutter_basic/form_validation.dart';
import 'package:flutter_basic/list_demo.dart';
import 'package:flutter_basic/login_page.dart';
import 'package:flutter_basic/mywidgets/mycarousel.dart';
import 'package:flutter_basic/mywidgets/positioned.dart';
import 'package:flutter_basic/sample.dart';
import 'package:flutter_basic/splash_screen.dart';
import 'package:flutter_basic/stack_widget.dart';
import 'package:flutter_basic/toast.dart';
import 'package:flutter_basic/untitled.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: MySplash());
  }
}
