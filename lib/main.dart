import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ct/provider/data_provider.dart';
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
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        home: const OverviewScreen(),
        routes: {
          DetailScreen.routeName: (context) => const DetailScreen(),
        },
      ),
    );
  }
}

