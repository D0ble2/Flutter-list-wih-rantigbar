import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String name;
  String comment;
  int stars;

  Review(this.name, this.comment, this.stars);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String avatarImage = 'assets/img/$name.jpg';
    // ignore: unused_local_variable
    final starBorder = Container(
      margin: const EdgeInsets.only(
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        size: 13.00,
        color: Color.fromARGB(255, 228, 179, 17),
      ),
    );
    final star = Container(
      margin: const EdgeInsets.only(
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        size: 13.00,
        color: Color.fromARGB(255, 228, 179, 17),
      ),
    );

    starlist(count) {
      var cantidad = [];
      for (int i = 0; i < count; i++) {
        cantidad.add(star);
      }
      List<Widget>? widgets = cantidad.cast<Widget>();
      return widgets;
    }

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      width: 220,
      child: Text(comment,
          textAlign: TextAlign.left,
          overflow: TextOverflow.clip,
          style: TextStyle(
            fontSize: 15,
          )),
    );

    final userName = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(name,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 25,
              )),
        ),
        Container(
            margin: EdgeInsets.only(left: 5),
            child: Row(
              children: starlist(stars),
              //star, star
            ))
      ],
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userComment,
      ],
    );
    final avatar = Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: CircleAvatar(
        backgroundImage: ExactAssetImage(avatarImage),
      ),
    );

    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: Row(
            children: [avatar, userDetails],
          )),
    );
  }
}
