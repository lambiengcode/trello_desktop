import 'package:flutter/material.dart';
import 'package:flutter_desktop_trello/src/public/styles.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ProjectPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 48.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Project',
                style: TextStyle(
                  color: colorBlack,
                  fontSize: _size.height / 44.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'This Week',
                    style: TextStyle(
                      color: colorBlack,
                      fontSize: _size.height / 48.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Icon(
                    Feather.arrow_down,
                    color: colorDarkGrey,
                    size: _size.height / 44.0,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
