import 'package:flutter/material.dart';
import 'package:personal_expence/transection.dart';

class Chart extends StatelessWidget {
  Chart({super.key});
  final int total = returnTotal();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: history.map((e) {
        return Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 5,
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  width: 5,
                  height: 100 * e / total,
                  color: Color.fromARGB(255, 255, 145, 0),
                )
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}
