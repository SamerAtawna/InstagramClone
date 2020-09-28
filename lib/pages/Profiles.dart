import 'package:flutter/material.dart';
import 'package:instaclone/widgets/UserThumb.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> args = ModalRoute.of(context).settings.arguments;
    print(args);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 350,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.error,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.add_circle_outline),
                    UserThumb("Samer", args[0], 100),
                    Icon(Icons.chat_bubble_outline)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
