import 'package:flutter/material.dart';

class HighlightRow extends StatelessWidget {
  const HighlightRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          CustomCircleIcon("highlight", Colors.green),
          CustomCircleIcon("new", Colors.yellow),
          CustomCircleIcon("Highlight", Colors.red),
        ])
      ],
    );
  }
}

CustomCircleIcon(name, coler) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile.jpg"),
          radius: 30,
          backgroundColor: coler,
        ),
      ),
      Text(name),
    ],
  );
}
