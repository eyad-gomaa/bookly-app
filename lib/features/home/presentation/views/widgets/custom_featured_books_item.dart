import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomFeaturedBooksItem extends StatelessWidget {
  const CustomFeaturedBooksItem({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error_outline),
              placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(
                    color: Colors.white,
                  ))),
        ),
      ),
    );
  }
}
