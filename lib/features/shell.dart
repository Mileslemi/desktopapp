import 'package:desktopapp/constants/colors.dart';
import 'package:flutter/material.dart';

class Shell extends StatelessWidget {
  const Shell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  width: 280,
                  color: greenColor,
                )
              ],
            ),
          ),
          Container(
            height: 84,
            width: double.infinity,
            color: blueColor,
          )
        ],
      ),
    );
  }
}
