import 'package:flutter/material.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    Key key,
    @required this.iter,
  }) : super(key: key);

  final List<int> iter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          for (var item in iter)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Container(
                height: 80,
                width: 80,
                child: Text(""),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.withOpacity(0.4)),
              ),
            )
        ],
      ),
    );
  }
}
