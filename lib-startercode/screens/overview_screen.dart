// import 'package:flutter/material.dart';

// import 'package:provider_ct/models/models_ex.dart';
// import 'package:provider_ct/widgets/items_list.dart';

// class OverviewScreen extends StatelessWidget {
//   const OverviewScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<Model> dataList = List.generate(
//       10,
//       (index) => Model(
//         title: 'Title ${index + 1}',
//         description: 'This is Description ${index + 1}',
//         imageUrl: 'https://picsum.photos/200/300?random=$index',
//       ),
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Overview Screen'),
//       ),
//       body: ListView.builder(
//         physics: const BouncingScrollPhysics(),
//         itemCount: dataList.length,
//         itemBuilder: (context, index) {
//           return InkWell(
//             child: ItemList(
//               title: dataList[index].title,
//               description: dataList[index].description,
//               imageUrl: dataList[index].imageUrl,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
