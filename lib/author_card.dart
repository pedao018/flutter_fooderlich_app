import 'package:flutter/material.dart';
import 'package:flutter_fooderlich_app/circle_image.dart';
import 'package:flutter_fooderlich_app/fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const AuthorCard(
      {Key? key,
      this.authorName = "",
      this.title = "",
      required this.imageProvider})
      : super(key: key);

  @override
  _AuthorCardState createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                  imageRadius: 25.5, imageProvider: widget.imageProvider),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  )
                ],
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                const snackBar = SnackBar(content: Text("Press Favorite"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                setState(() {
                  _isFavorited = !_isFavorited;
                });
              },
              icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
              iconSize: 30,
              color: Colors.red)
        ],
      ),
    );
  }
}
