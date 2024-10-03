import 'package:flutter/material.dart';

class SliverErrorText extends StatelessWidget {
  const SliverErrorText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
        child: Center(
            child: Text(
      'Sorry, an error has happened..',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    )));
  }
}