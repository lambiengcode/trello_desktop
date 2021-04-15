import 'package:flutter/material.dart';
import 'package:flutter_desktop_trello/src/pages/home/widgets/side_bar.dart';
import 'package:flutter_desktop_trello/src/pages/home/widgets/top_bar.dart';
import 'package:flutter_desktop_trello/src/public/styles.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: _size.height,
        width: _size.width,
        color: mCL,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SideBar(),
            ),
            VerticalDivider(
              thickness: .15,
              width: .15,
              color: colorDarkGrey,
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  SizedBox(height: _size.height / 30.0),
                  TopBar(),
                  SizedBox(height: _size.height / 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
