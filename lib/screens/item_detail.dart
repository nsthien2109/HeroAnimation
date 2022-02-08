import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String image;
  String title;
  String subtitle;
  DetailScreen({required this.image, required this.title , required this.subtitle});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/3.3,
            child: Hero(tag: widget.image,child: Image.asset(widget.image,fit: BoxFit.cover)),
          ),
          const SizedBox(height: 20),
          Text(widget.title,style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          )),
          const SizedBox(height: 10),
          Text(widget.subtitle,style: const TextStyle(
            fontSize: 20
          )),
        ],
      ),
    );    
  }
}