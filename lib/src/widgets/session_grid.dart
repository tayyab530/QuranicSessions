import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/session_item.dart';
import '../providers/session_provider.dart';

class SessionsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _sessionData = Provider.of<Session>(context);

    return GridView.builder(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      itemCount: _sessionData.sessionItems.length,
      itemBuilder: (ctx, index) {
        var _sessionItem = _sessionData.sessionItems[index];
        return SessionItem(
            id: _sessionItem.id,
            title: _sessionItem.title,
            remaining: _sessionItem.remaining,
            issueTime: _sessionItem.issueTime);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 3 / 2,
      ),
    );
  }
}
