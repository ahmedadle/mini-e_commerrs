import 'package:flutter/material.dart';
import 'package:shoping_app/core/routes/pages.dart';
import 'package:shoping_app/core/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: RoutesName.home,
    onGenerateRoute: Approute.generate,
    );
  }
}
