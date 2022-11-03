import 'package:flutter/material.dart';
import 'package:top_animales/pet.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final List = Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
              left: 20,
            ),
            // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Text('All reviews',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFa3a5a7),
                  fontWeight: FontWeight.w800,
                )),
          ),
          Review("peyt list", 'There is amazing like the Mt moon', 4),
          Review("Dino Nugget", 'RAAAAAAAAAAAAAAAAAAAAAAWR', 5),
          Review("peyt list", 'There is amazing like the Mt moon', 4),
          Review("Dino Nugget", 'RAAAAAAAAAAAAAAAAAAAAAAWR', 5),
        ],
      ),
    );

    return List;
  }
}
