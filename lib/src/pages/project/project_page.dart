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
          SizedBox(height: _size.height / 30.0),
          Row(
            children: [
              _buildColumnTask(context, 'Todo'),
              SizedBox(width: 24.0),
              _buildColumnTask(context, 'Progress'),
              SizedBox(width: 24.0),
              _buildColumnTask(context, 'Done'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildColumnTask(context, title) {
    final _size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: colorPrimary.withOpacity(.2),
        ),
        child: Column(
          children: [
            // SizedBox(height: 12.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: colorDarkGrey,
                      fontSize: _size.height / 54.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: colorPrimary.withOpacity(.5),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: colorTitle,
                        fontSize: _size.height / 58.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
