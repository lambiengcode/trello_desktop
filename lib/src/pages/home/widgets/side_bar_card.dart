import 'package:flutter/material.dart';
import 'package:flutter_desktop_trello/src/public/styles.dart';

class SideBarCard extends StatefulWidget {
  final String title;
  final IconData icon;
  final bool isActive;
  SideBarCard({this.title, this.icon, this.isActive});
  @override
  State<StatefulWidget> createState() => _SideBarCardState();
}

class _SideBarCardState extends State<SideBarCard> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      margin: EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: widget.isActive ? colorPrimary : Colors.transparent,
            width: 3.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            widget.icon,
            color: widget.isActive ? colorBlack : colorDarkGrey,
            size: _size.height / 46.0,
          ),
          SizedBox(width: 20.0),
          Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Text(
              widget.title,
              style: TextStyle(
                color: widget.isActive ? colorBlack : colorDarkGrey,
                fontSize: _size.height / 48.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
