import 'package:flutter/material.dart';

class recentlyLocations extends StatelessWidget {
  const recentlyLocations({
    super.key,
  });

  Widget _buildRecentLocationButton(String locationName) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: TextButton(
          onPressed: () {},
          child: Text(
            locationName,
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              icon: Icon(
                Icons.keyboard_voice,
                color: Color.fromRGBO(142, 142, 147, 1),
              ),
              onPressed: () {},
            ),
          ),
          _buildRecentLocationButton('Home'),
          _buildRecentLocationButton('University of Salerno')
        ],
      ),
    );
  }
}
