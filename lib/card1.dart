import 'package:flutter/material.dart';
import 'package:flutter_fooderlich_app/fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.all(16),
          constraints:
              BoxConstraints.expand(width: double.infinity, height: 450),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/mag1.png"), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Stack(
            children: [
              Text(category, style: FooderlichTheme.darkTextTheme.bodyText1),
              Positioned(
                child:
                    Text(title, style: FooderlichTheme.darkTextTheme.headline1),
                top: 15,
              ),
              Positioned(
                child: Text(description,
                    style: FooderlichTheme.darkTextTheme.bodyText1),
                bottom: 25,
                right: 0,
              ),
              Positioned(
                child:
                    Text(chef, style: FooderlichTheme.darkTextTheme.bodyText1),
                bottom: 5,
                right: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
