import 'package:flutter/material.dart';
import 'package:fooder_app/components/author_card.dart';
import 'package:fooder_app/fooderlich_theme.dart';
import 'package:fooder_app/models/explore_recipe.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key, required ExploreRecipe recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/magazine_pics/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Column(
          children: [
            //Author Information
            const AuthorCard(
                authorName: 'Dan Erifried',
                title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/magazine_pics/erd.jpg'),
            ),
            //Positionned Text
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: FooderLichTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothie',
                        style: FooderLichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
