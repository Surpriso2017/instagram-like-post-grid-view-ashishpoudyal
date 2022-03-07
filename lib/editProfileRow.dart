import 'package:flutter/material.dart';

class EditProfileRow extends StatelessWidget {
  const EditProfileRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 340,
                height: 35,
                child: Center(child: Text("Edit Profile")),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
              ),
              Container(
                height: 35,
                width: 35,
                child: Icon(Icons.person),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
              )
            ],
          ),
        )
      ],
    );
  }
}
