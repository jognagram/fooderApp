import 'package:flutter/material.dart';
import 'package:fooder_app/components/circle_image.dart';
import 'package:fooder_app/fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;
  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),

              const SizedBox(width: 8,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderLichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FooderLichTheme.lightTextTheme.headline3,
                  )
                ],
              ),
              IconButton(
                icon:  Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
                iconSize: 36,
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    _isFavorited = !_isFavorited;
                  });
                  const snackBar = SnackBar(content: Text('Favorite Pressed'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),

            ],

          ),
        ],
      ),
    );
  }
}
