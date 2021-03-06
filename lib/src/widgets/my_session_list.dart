import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/my_sessions.dart';
import 'list_item.dart';

class MySessionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mySession =
        Provider.of<MySessions>(context).mySession;
    return ListView.builder(
      itemCount: _mySession.length,
      itemBuilder: (ctx, index) => ListItem(
          id: _mySession[index].id,
          title: _mySession[index].title,
          remaining: _mySession[index].remaining,
          issueTime: _mySession[index].issueTime),
    );
  }
}
