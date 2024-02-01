import 'package:firest_app/accounts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'accounts.dart';

void main() {
  runApp(MaterialApp(
    routes:{
      "Home":(_)=>Home(),
      "Login":(_)=>login(),

    },
    initialRoute: "Login",
  ));
}

