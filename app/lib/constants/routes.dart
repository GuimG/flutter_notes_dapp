import 'package:dapp/screens/home/home.dart';
import 'package:dapp/screens/note/note.dart';
import 'package:dapp/screens/splash/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = "/";
  static const String home = "/home";
  static const String note = "/note";

  static final Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomeScreen(),
    note: (context) => const NoteScreen(),
  };
}
