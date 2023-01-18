import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phone_otp/home.dart';
import 'package:phone_otp/otp.dart';
import 'package:phone_otp/phone.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes: {
      'phone' :(context) => MyPhone(),
      'otp'   :(context) => MyOtp(),
      'home'  :(context) => MyHome()
    },
  ));
}
