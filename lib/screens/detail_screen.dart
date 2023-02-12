import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ct/provider/data_provider.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail-screen';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // get title from argument
    final String title = ModalRoute.of(context)!.settings.arguments as String;

    final data = Provider.of<DataProvider>(context)
        .getDataList
        .firstWhere((element) => element.title == title);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: Container(
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
