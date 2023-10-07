import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  Icon icon;
  String text;
  GridItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: MediaQuery.of(context).size.width * 0.2,
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(4, 4)),
          ]),
    );
  }
}
