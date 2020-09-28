import 'package:flutter/material.dart';

class PostTop extends StatelessWidget {
  const PostTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    alignment: Alignment(0.0, 0.0),
                    width: 48.0,
                    height: 48.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://randomuser.me/api/portraits/med/women/82.jpg")))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Maoo.Lopez",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Archivo"),
                  ),
                  Text(
                    "since 20 min",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                child: Image.asset("assets/send.png"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 5.0),
                child: Image.asset(
                  "assets/options.png",
                  width: 22,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
