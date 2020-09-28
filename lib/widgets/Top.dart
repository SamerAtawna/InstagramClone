import 'package:flutter/material.dart';
import 'package:instaclone/providers/users.dart';
import 'package:provider/provider.dart';

class Top extends StatelessWidget {
  const Top({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool darkOn = Provider.of<Users>(context).getDarkMode();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Icon(Icons.add_circle_outline),
        ),
        Container(
          child: darkOn
              ? Image.asset("assets/Instagram_logo-1.png")
              : Image.asset("assets/Instagram_logo.png"),
        ),
        Container(
          child: Icon(Icons.chat_bubble_outline),
        ),
      ],
    );
  }
}
