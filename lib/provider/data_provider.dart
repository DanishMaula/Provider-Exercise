import 'package:flutter/material.dart';

import '../models/models_ex.dart';

class DataProvider with ChangeNotifier {
  List<Model> _dataList = List.generate(
    10,
    (index) => Model(
      title: 'Title ${index + 1}',
      description: 'This is Description ${index + 1}',
      imageUrl: 'https://picsum.photos/200/300?random=$index',
    ),
  );

  List<Model> get getDataList {
    return _dataList;
  }
}
