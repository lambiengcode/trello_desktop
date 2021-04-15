import 'package:flutter/material.dart';
import 'package:flutter_desktop_trello/src/public/styles.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TopBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Feather.search,
                color: fCL,
                size: _size.height / 44.0,
              ),
              SizedBox(width: 16.0),
              Text(
                'Search',
                style: TextStyle(
                  color: fCL,
                  fontSize: _size.height / 48.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Feather.info,
                color: fCL,
                size: _size.height / 44.0,
              ),
              SizedBox(width: 24.0),
              Icon(
                Feather.bell,
                color: colorBlack,
                size: _size.height / 44.0,
              ),
              SizedBox(width: 24.0),
              Text(
                'lambiengcode',
                style: TextStyle(
                  color: colorBlack,
                  fontSize: _size.height / 48.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 24.0),
              Container(
                height: _size.height / 24.0,
                width: _size.height / 24.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/60530946?v=4',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
