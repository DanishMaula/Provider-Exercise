import 'package:flutter/material.dart';
import 'package:provider_ct/screens/detail_screen.dart';
import 'package:provider_ct/screens/overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OverviewScreen(),
      routes: {
        DetailScreen.routeName: (context) => const DetailScreen(),
      },
    );
  }
}

