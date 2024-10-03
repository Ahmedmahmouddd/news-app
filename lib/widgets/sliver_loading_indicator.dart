import 'package:flutter/material.dart';

class SliverLoadingIndicator extends StatelessWidget {
  const SliverLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
        child: Center(
            child: CircularProgressIndicator(
      color: Colors.amber,
      strokeAlign: 1,
      strokeWidth: 8,
    )));
  }
}
