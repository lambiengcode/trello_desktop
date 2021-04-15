import 'package:flutter/material.dart';
import 'package:flutter_desktop_trello/src/pages/home/widgets/side_bar_card.dart';
import 'package:flutter_desktop_trello/src/public/constant.dart';
import 'package:flutter_desktop_trello/src/public/styles.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SideBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: _size.height / 30.0),
          Text(
            '.studio',
            style: TextStyle(
              color: colorBlack,
              fontSize: _size.height / 40.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: _size.height / 20.0),
          SideBarCard(
            title: 'Overview',
            icon: Feather.home,
            isActive: false,
          ),
          SideBarCard(
            title: 'Stats',
            icon: Feather.bar_chart_2,
            isActive: false,
          ),
          SideBarCard(
            title: 'Project',
            icon: Feather.folder,
            isActive: true,
          ),
          SideBarCard(
            title: 'Chat',
            icon: Feather.message_square,
            isActive: false,
          ),
          SideBarCard(
            title: 'Calendar',
            icon: Feather.calendar,
            isActive: false,
          ),
          SizedBox(height: height * .36),
          SideBarCard(
            title: 'Settings',
            icon: Feather.settings,
            isActive: false,
          ),
          SideBarCard(
            title: 'Log out',
            icon: Feather.log_out,
            isActive: false,
          ),
        ],
      ),
    );
  }
}
