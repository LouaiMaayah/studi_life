import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:omnilife/requirments_page/components.dart';

class ReqirmentsPage extends StatefulWidget {
  const ReqirmentsPage({Key? key});

  @override
  State<ReqirmentsPage> createState() => _ReqirmentsPageState();
}

class _ReqirmentsPageState extends State<ReqirmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(
              child: Text(
                "StudiLife",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
              ),
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GridItem(
                    icon: LineIcons.euroSign,
                    text: "Finances",
                    onTapFunction: () => Moveto("text"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GridItem(
                    icon: LineIcons.check,
                    text: "To Do's",
                    onTapFunction: () => Moveto("text"),
                  )
                ]),
                const SizedBox(
                  height: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GridItem(
                    icon: LineIcons.book,
                    text: "Courses",
                    onTapFunction: () => Moveto("text"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GridItem(
                    icon: LineIcons.shoppingBag,
                    text: "Shopping",
                    onTapFunction: () => Moveto("text"),
                  )
                ]),
                const SizedBox(
                  height: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GridItem(
                    icon: LineIcons.calendar,
                    text: "Reminders",
                    onTapFunction: () => Moveto("text"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GridItem(
                    icon: LineIcons.plane,
                    text: "Bucket List",
                    onTapFunction: () => Moveto("text"),
                  )
                ]),
              ],
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }

  void Moveto(String text) {
    Navigator.pushNamed(context, text);
  }
}
