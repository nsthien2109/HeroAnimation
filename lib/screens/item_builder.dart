import 'package:flutter/material.dart';

class ItemBuilder extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  ItemBuilder({Key? key, required this.image,required this.title,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(15),
      trailing: SizedBox(
        width: 140,
        height: 180,
        child: Hero(
          tag: image,
          child: Image.asset(image,fit: BoxFit.cover)
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}