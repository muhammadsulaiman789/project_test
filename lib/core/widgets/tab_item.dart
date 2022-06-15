import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String title;

  const TabItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontFamily: 'Heebo',
          letterSpacing: 1,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
