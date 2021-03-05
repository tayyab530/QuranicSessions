import 'package:flutter/cupertino.dart';

class SessionItem {
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
}
