import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../models/session_model.dart';

class Session with ChangeNotifier {
  List<SessionItem> _sessions = [
    SessionItem(
      id: 's1',
      title: 'Shab e Ronaq',
      remaining: Random().nextInt(30) + 1,
      issueTime: DateTime.now(),
    ),
    SessionItem(
      id: 's2',
      title: 'Shab e Gul',
      remaining: Random().nextInt(30) + 1,
      issueTime: DateTime.now(),
    ),
    SessionItem(
      id: 's3',
      title: 'Rozana',
      remaining: Random().nextInt(30) + 1,
      issueTime: DateTime.now(),
    ),
    SessionItem(
      id: 's4',
      title: 'Isale Sawaab',
      remaining:Random().nextInt(30) + 1,
      issueTime: DateTime.now(),
    )
  ];

  
}
