import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  final Function applyFilter;

  Filters(this.applyFilter);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.more_vert_rounded),
      itemBuilder: (ctx) {
        return [
          PopupMenuItem(
            child: Text('All'),
            value: FiltersEnum.All,
          ),
          PopupMenuItem(
            child: Text('>15'),
            value: FiltersEnum.GreaterThan15,
          ),
        ];
      },
      onSelected: (filter) {
        applyFilter(filter);
      },
    );
  }
}

enum FiltersEnum {
  All,
  GreaterThan15,
}
