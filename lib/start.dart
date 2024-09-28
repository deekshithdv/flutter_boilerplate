import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/home.dart';

Future<void> start() async{
 WidgetsFlutterBinding.ensureInitialized();
  runApp(const Home());
}