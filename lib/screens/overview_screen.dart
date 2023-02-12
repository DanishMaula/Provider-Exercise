import 'package:flutter/material.dart';

import 'package:provider_ct/models/models_ex.dart';
import 'package:provider_ct/widgets/items_list.dart';
import 'package:provider_ct/widgets/list_data.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Overview Screen'),
      ),
      body: const ListData(),
    );
  }
}
