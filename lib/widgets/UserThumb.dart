import 'package:flutter/material.dart';

class UserThumb extends StatelessWidget {
  String pic;
  String name;
  double size;
  UserThumb(this.name, this.pic, this.size);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/profile',
                          arguments: [pic, name]);
                    },
                    child: Hero(
                      tag: name,
                      child: Stack(
                        children: [
                          Container(
                            width: this.size,
                            height: this.size,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color(0xffFC0B7B),
                                      Color(0xff7820AD)
                                    ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: Container(
                                alignment: Alignment(0.0, 0.0),
                                width: this.size - 6,
                                height: this.size - 6,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: new NetworkImage(pic)))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [Text(name)],
              )
            ],
          )
        ],
      ),
    );
  }
}
