import 'package:admiral_taxi/widgets/recently_locations_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomToolBar extends StatelessWidget {
  const BottomToolBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        recentlyLocations(),
        SizedBox(
          height: 5,
        ),
        Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 25,
                    )),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: CupertinoTextField(
                    padding: const EdgeInsets.all(13),
                    prefix: Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Icon(
                        Icons.search,
                        size: 25,
                        color: Color.fromRGBO(199, 199, 204, 1),
                      ),
                    ),
                    placeholder: 'Where are you going?',
                    placeholderStyle:
                        TextStyle(color: Color.fromRGBO(136, 136, 140, 1)),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(249, 249, 249, 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
