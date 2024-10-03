import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      title: RichText(
          text: TextSpan(children: [
        const TextSpan(
            text: 'News',
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w800)),
        TextSpan(
            text: 'Cloud',
            style: TextStyle(
                color: Colors.amber[600],
                fontSize: 24,
                fontWeight: FontWeight.w800))
      ])),
      centerTitle: true,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
