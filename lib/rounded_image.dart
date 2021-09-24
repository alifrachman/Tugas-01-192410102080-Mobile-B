import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(200),
      child: Image.network(
        imageUrl,
        fit: BoxFit.contain,
      ),
    );
  }
}
