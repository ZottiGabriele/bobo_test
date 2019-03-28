import 'package:flutter/material.dart';
import 'package:test_bobo/utils.dart';

class BottomBar extends StatelessWidget {
  String title;

  BottomBar(this.title);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MClipper(70),
            child: Container(
                decoration:
                    // BoxDecoration(color: Color.fromARGB(255, 50, 127, 161))),
                    // BoxDecoration(color: Color.fromARGB(255, 26, 70, 88))),
                    BoxDecoration(color: Color.fromARGB(255, 85, 169, 103))),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 24, 24, 0),
                  child: Stack(
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          color: Color.fromARGB(15, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      PartitaHolder("Pinco", "Pallini", "Campo 1", "12:30"),
                      PartitaHolder(
                          "Gli svegli", "QuelliDiRiky", "Campo 3", "22:30"),
                      PartitaHolder("ADSAD", "lol", "Campo 2", "9:20"),
                      SizedBox(
                        width: 24,
                      )
                    ],
                  ),
                )
              ]),
        ],
      ),
    );
  }
}

class PartitaHolder extends StatelessWidget {
  String sq1, sq2, campo, ore;

  PartitaHolder(this.sq1, this.sq2, this.campo, this.ore);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 16, 0, 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 320,
            decoration: BoxDecoration(color: Color.fromARGB(255, 252, 223, 79)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  sq1 + " vs " + sq2,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Text(
                  campo + " - " + ore,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}

class MClipper extends CustomClipper<Path> {
  double cornerSize;
  MClipper(this.cornerSize);

  @override
  Path getClip(Size size) {
    var path1 = Path();
    var path2 = Path();

    path1.moveTo(size.width - cornerSize, 0);
    path1.addArc(
        Rect.fromCircle(
            center: Offset(size.width - cornerSize, cornerSize),
            radius: cornerSize),
        degToRad(-90),
        degToRad(90));
    path1.lineTo(size.width, size.height);
    path1.lineTo(0, size.height);
    path1.close();

    path2.lineTo(size.width - cornerSize, 0);
    path2.lineTo(0, size.height);
    path2.close();

    return Path.combine(PathOperation.union, path1, path2);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}