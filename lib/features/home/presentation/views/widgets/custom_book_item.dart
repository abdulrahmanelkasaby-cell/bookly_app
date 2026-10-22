import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              'https://images.unsplash.com/photo-1517841905240-472988babdf9?utm_source=chatgpt.com',
            ),
          ),
        ),
      ),
    );
  }
}
