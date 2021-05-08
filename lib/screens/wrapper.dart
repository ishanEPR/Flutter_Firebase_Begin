import 'package:flutter/material.dart';
import 'package:flutter_firebase_begin/screens/home/home.dart';
import 'package:flutter_firebase_begin/screens/login/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //return either home or authenticate widget
    return Authenticate();
  }
}
