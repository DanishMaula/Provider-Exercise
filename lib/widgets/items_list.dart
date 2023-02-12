import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/detail_screen.dart';

class ItemList extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  
  const ItemList(
      {super.key,
      required this.title,
      required this.description,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailScreen.routeName, arguments: title);
      },
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
