import 'package:flutter/material.dart';

class SessionItem extends StatelessWidget {
  final String id;
  final String title;
  final int remaining;
  final DateTime issueTime;

  SessionItem({
    @required this.id,
    @required this.title,
    @required this.remaining,
    @required this.issueTime,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          color: Colors.blueAccent,
          width: 150.0,
          height: 200.0,
        ),
      ),
      header: GridTileBar(title: Text(title)),
      footer: GridTileBar(
        leading: IconButton(
          icon: Icon(
            Icons.add_outlined,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Spacer(),
        trailing: Row(
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
    );
  }
}
