import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExplorScreen extends StatelessWidget {
  const ExplorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Explore",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
