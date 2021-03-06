import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/fliters.dart' show FiltersEnum;
import '../widgets/session_item.dart';
import '../providers/session_provider.dart';

class SessionsGrid extends StatelessWidget {
  final FiltersEnum _filter;

  SessionsGrid(this._filter);

  @override
  Widget build(BuildContext context) {
    final _sessionData = Provider.of<Session>(context);

    return GridView.builder(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      itemCount: _filter == FiltersEnum.All ? _sessionData.sessionItems.length : _sessionData.filteredItems.length,
      itemBuilder: (ctx, index) {
        var _sessionItem = _filter == FiltersEnum.All ? _sessionData.sessionItems[index] : _sessionData.filteredItems[index];
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
