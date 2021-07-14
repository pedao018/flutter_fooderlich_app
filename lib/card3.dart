import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fooderlich_app/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/mag2.png"), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          constraints: BoxConstraints.expand(height: 450),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.book, size: 40),
                    SizedBox(height: 8),
                    Text(
                      "Recipe Trends",
                      style: FooderlichTheme.darkTextTheme.headline2,
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12,
                    children: [
                      Chip(
                          label: Text("Healthy",
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            print("Delete");
                          }),
                      Chip(
                          label: Text("Vegan",
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            print("Delete");
                          }),
                      Chip(
                          label: Text("Carrots",
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7)),
                      Chip(
                          label: Text("Green",
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7)),
                      Chip(
                          label: Text("Wheat",
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7)),
                      Chip(
                          label: Text("Pescetarian",
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7)),
                      Chip(
                          label: Text("Mint",
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7)),
                      Chip(
                          label: Text("Lemongrass",
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
