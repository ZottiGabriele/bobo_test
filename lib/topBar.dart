import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  int activeBtn;

  TopBar(this.activeBtn);

  @override
  _TopBarState createState() => _TopBarState(activeBtn);
}

class _TopBarState extends State<TopBar> {
  int activeBtn;

  _TopBarState(this.activeBtn);

  @override
  Widget build(BuildContext context) {
    List<Widget> buttons = [];
    buttons.add(TopBarBtn(context, activeBtn == 0, "Ora"));
    buttons.add(TopBarBtn(context, activeBtn == 1, "Classifica"));
    buttons.add(TopBarBtn(context, activeBtn == 2, "Squadre"));

    return Container(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: buttons.map((item) {
            var index = buttons.indexOf(item);
            return Container(
              width: 105,
              child: FlatButton(
                color: (index == activeBtn) ? Color.fromARGB(255, 252, 223, 79) : Colors.transparent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                onPressed: () {
                  setState(() {
                    activeBtn = index;
                  });
                },
                child: item,
              ),
            );
          }).toList(),
        ));
  }
}

Widget TopBarBtn(BuildContext context, bool active, String text) {
  
  Color textColor = (active) ? Colors.black : Colors.black26;

  return Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
    ),
  );
}