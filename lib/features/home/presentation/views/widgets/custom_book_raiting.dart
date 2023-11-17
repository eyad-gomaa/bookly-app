import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key, required this.rating, required this.count,
  });
  final double rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
        ),
        const SizedBox(
          width: 5,
        ),
         Text(
          "${rating}",
          style: Styles.TextStyle20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(${count})",
          style: Styles.TextStyle14,
        ),
      ],
    );
  }
}