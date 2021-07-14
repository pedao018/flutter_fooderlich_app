import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fooderlich_app/author_card.dart';
import 'package:flutter_fooderlich_app/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          constraints:
              BoxConstraints.expand(width: double.infinity, height: 450),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/mag5.png"), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Column(
            children: [
              AuthorCard(
                  authorName: "Mike Katz",
                  title: "Smoothie Connoisseur",
                  imageProvider: AssetImage("assets/author_katz.jpeg")),
              Expanded(
                  child: Container(
                constraints: BoxConstraints.expand(),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 50,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "Smoothies",
                          style: FooderlichTheme.lightTextTheme.headline1,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 16,
                      bottom: 0,
                      child: Text(
                        "Recipe",
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
