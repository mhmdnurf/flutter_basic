import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      height: 240,
      fit: BoxFit.cover,
      width: 600,
    );
  }
}
