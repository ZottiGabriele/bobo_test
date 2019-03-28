import 'package:flutter/material.dart';
import 'package:test_bobo/utils.dart';

// class TopBar extends StatefulWidget {
//   int activeBtn;

//   TopBar(this.activeBtn);

//   @override
//   _TopBarState createState() => _TopBarState(activeBtn);
// }

// class _TopBarState extends State<TopBar> {
//   int activeBtn;

//   _TopBarState(this.activeBtn);

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> buttons = [];
//     buttons.add(TopBarBtn(context, activeBtn == 0, "Ora"));
//     buttons.add(TopBarBtn(context, activeBtn == 1, "Classifica"));
//     buttons.add(TopBarBtn(context, activeBtn == 2, "Squadre"));

//     return Container(
//         height: 56,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: buttons.map((item) {
//             var index = buttons.indexOf(item);
//             return Container(
//               width: 105,
//               child: FlatButton(
//                 color: (index == activeBtn) ? Color.fromARGB(255, 252, 223, 79) : Colors.transparent,
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
//                 onPressed: () {
//                   setState(() {
//                     activeBtn = index;
//                   });
//                 },
//                 child: item,
//               ),
//             );
//           }).toList(),
//         ));
//   }
// }

// Widget TopBarBtn(BuildContext context, bool active, String text) {
//   Color textColor = (active) ? Colors.black : Colors.black26;

//   return Container(
//     padding: EdgeInsets.symmetric(vertical: 12),
//     child: Text(
//       text,
//       textAlign: TextAlign.center,
//       style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
//     ),
//   );
// }

class TopBar extends StatefulWidget {
  @override
  TopBarState createState() => TopBarState();
}

class TopBarState extends State<TopBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _controller =
        TabController(initialIndex: 0, length: 3, vsync: this);

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 8.0, 24, 0),
                  child: Text(
                    "Attic",
                    style: TextStyle(fontSize: 23, color: Colors.black26),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 8.0, 24, 16),
                  child: Text(
                    "BoboCup2k19",
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Theme(
                  data: ThemeData(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                  ),
                  child: TabBar(
                    indicator: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        color: Color.fromARGB(255, 252, 223, 79)),
                    indicatorSize: TabBarIndicatorSize.label,
                    controller: _controller,
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black26),
                    tabs: <Widget>[
                      Tab(
                        child: Container(
                          width: 105,
                          child: Text(
                            "Ora",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 105,
                          child: Text(
                            "Classifica",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 105,
                          child: Text(
                            "Squadre",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]))
        ]);
  }
}
