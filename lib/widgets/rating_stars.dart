import 'package:flutter/material.dart';

import 'package:flutter_emoji/flutter_emoji.dart';

var parser = EmojiParser();
var ratingStar = parser.get('star').code;

class RatingStars extends StatelessWidget {
  final int rating;

  RatingStars(this.rating);

  Widget build(BuildContext context) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '$ratingStar  ';
    }
    stars.trim();
    return Text(
      stars,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }
}
