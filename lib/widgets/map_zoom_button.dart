import 'package:flutter/material.dart';

class mapZoom extends StatelessWidget {
  const mapZoom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          Card(
            margin: const EdgeInsets.only(right: 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: IconButton(
                icon: Icon(Icons.add,
                    size: 20, color: Color.fromRGBO(142, 142, 147, 1)),
                onPressed: () {}),
          ),
          Card(
            margin: const EdgeInsets.only(right: 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove,
                  size: 20,
                  color: Color.fromRGBO(142, 142, 147, 1),
                )),
          )
        ],
      ),
    );
  }
}
