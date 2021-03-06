import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String id;
  final String title;
  final int remaining;
  final DateTime issueTime;

  ListItem({
    @required this.id,
    @required this.title,
    @required this.remaining,
    @required this.issueTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent[200],
        borderRadius: BorderRadius.circular(15.0)
      ),
      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
      child: ListTile(
          title: Text(title),
          trailing: Container(
            alignment: Alignment.centerRight,
            width: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('${30 - remaining}'),
                SizedBox(width: 5.0),
                Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ],
            ),
          ),
      ),
    );
  }
}