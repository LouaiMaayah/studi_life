import 'package:flutter/material.dart';
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
          children: [
            Center(
              child: Text(
                "data",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GridView.count(
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  crossAxisCount: 2,
                  children: [
                    GridItem(
                      icon: Icon(Icons.abc),
                      text: "boobs",
                    ),
                    GridItem(
                      icon: Icon(Icons.abc),
                      text: "no boobs",
                    ),
                    GridItem(
                      icon: Icon(Icons.abc),
                      text: "boobs",
                    ),
                    GridItem(
                      icon: Icon(Icons.abc),
                      text: "boobs",
                    ),
                    GridItem(
                      icon: Icon(Icons.abc),
                      text: "boobs",
                    ),
                    GridItem(
                      icon: Icon(Icons.abc),
                      text: "boobs",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
