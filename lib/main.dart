import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test/Form.dart';
import 'package:test/Login.dart';
import 'package:test/Guest.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: GuestScreen(), // gestionnaire de view
    );
  }
}
