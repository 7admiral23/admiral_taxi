import 'package:flutter/material.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Card(
          shape: CircleBorder(),
          margin: const EdgeInsets.all(10),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.gps_fixed,
                color: Color.fromRGBO(142, 142, 147, 1),
                size: 20,
              ))),
    );
  }
}
