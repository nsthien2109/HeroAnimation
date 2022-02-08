import 'package:flutter/material.dart';
import 'package:hero_animation/data/list_demo.dart';
import 'package:hero_animation/screens/item_builder.dart';
import 'package:hero_animation/screens/item_detail.dart';

class ListMovie extends StatefulWidget {
  const ListMovie({ Key? key }) : super(key: key);

  @override
  _ListMovieState createState() => _ListMovieState();
}

final List<ItemMovie> items = [
  ItemMovie(image: 'assets/images/sino.jpg', title: 'China', subtitle: 'Most beautiful view in this country'),
  ItemMovie(image: 'assets/images/vietnam.jpg', title: 'Vietnam', subtitle: 'Beautiful country in Southeast Asia but they have East Asia culture'),
  ItemMovie(image: 'assets/images/japan.jpg', title: 'Japan', subtitle: 'Developed country in Sinophere'),
  ItemMovie(image: 'assets/images/korea.jpg', title: 'South Korea', subtitle: 'Copy Japan and China'),
];

class _ListMovieState extends State<ListMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(image: items[index].image,title: items[index].title, subtitle: items[index].subtitle)));
          },
          child: ItemBuilder(
            image: items[index].image,
            title: items[index].title,
            subtitle: items[index].subtitle,
          ),
        ),
        itemCount: items.length,
      ),
    );
  }
}