import 'package:bookly/features/home/presentation/views/widgets/custom_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [CustomBookDetailsAppBar()]),
    );
  }
}
