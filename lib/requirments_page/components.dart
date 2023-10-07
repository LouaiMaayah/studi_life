import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  IconData icon;
  String text;
  Function onTapFunction; // Function type for the callback

  GridItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTapFunction, // Add the function parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: MediaQuery.of(context).size.width * 0.4,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                text,
                style:
                    const TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
              ),
            ),
            Icon(
              icon,
              size: 50,
              color: Color.fromRGBO(1, 64, 224, 0.6),
            ),
          ],
        ),
        onTap: () {
          // Call the onTapFunction when the InkWell is tapped
          onTapFunction();
        },
      ),
    );
  }
}
