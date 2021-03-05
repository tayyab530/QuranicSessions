import 'package:flutter/material.dart';

class SessionsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
      itemCount: 4,
      itemBuilder: (ctx, index) {
        return Center(child: Text('Session $index'),);
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
