import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                  // child: Image.asset("assets/images/profile.jpg"),
                  radius: 50,
                  backgroundColor: Colors.black,
                ),
              ),
              Text(
                "ashish poudyal",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          ),
          CustomShower(120, "Posts"),
          SizedBox(
            width: 15,
          ),
          CustomShower(185, "Followers"),
          SizedBox(
            width: 15,
          ),
          CustomShower(216, "Following"),
        ],
      ),
    );
  }
}

CustomShower(number, name) {
  return Column(
    children: [
      Text(
        number.toString(),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Text(name),
    ],
  );
}
