import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ct/provider/data_provider.dart';
import 'package:provider_ct/widgets/items_list.dart';

class ListData extends StatelessWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Get the provider
    final dataList = Provider.of<DataProvider>(context);

    // Get the data from the provider
    final allData = dataList.getDataList;

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: allData.length,
      itemBuilder: (context, index) {
        return ItemList(
          title: allData[index].title,
          description: allData[index].description,
          imageUrl: allData[index].imageUrl,
        );
      },
    );
  }
}
