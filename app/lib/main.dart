import 'package:dapp/injection.dart';
import 'package:dapp/presentation/core/app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  runApp(
    const App(),
  );
}
