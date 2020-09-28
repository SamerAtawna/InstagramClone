import 'package:flutter/material.dart';
import 'package:instaclone/config/config.dart';
import 'PostSlider.dart';
import 'PostTop.dart';
import 'SearchInput.dart';
import 'Skeleton.dart';
import 'Top.dart';
import 'UserThumb.dart';

class UserThumbs extends StatefulWidget {
  UserThumbs({
    Key key,
    @required this.users,
  }) : super(key: key);

  final users;

  @override
  _UserThumbsState createState() => _UserThumbsState();
}

class _UserThumbsState extends State<UserThumbs> {
  String sliderLabel = "";

  setSliderLabel(index) {
    setState(() {
      sliderLabel =
          (index + 1).toString() + "/" + (imageData().length + 1).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<int> iter = [1, 2, 3, 4];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Top(),
        ),
        widget.users.length == 0
            ? Skeleton(iter: iter)
            : Container(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.users.length,
                    itemBuilder: (BuildContext ctx, int i) {
                      return UserThumb(widget.users[i]["name"]["first"],
                          widget.users[i]["picture"]["medium"], 80);
                    }),
              ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explorer",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SearchInput(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 450,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: BorderRadius.circular(22.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PostTop(),
                Stack(
                  children: [
                    PostSlider(setSliderLabel),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.black.withAlpha(150),
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: Text(
                                sliderLabel,
                                style: TextStyle(color: Colors.white),
                              ),
                            ))),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primaryVariant,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nFusce at tellus faucibus, euismod ligula nec, vehicula\nlacus"),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
