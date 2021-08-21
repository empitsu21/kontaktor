import 'package:flutter/material.dart';

class ErrWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(Icons.error),
          Text("Something went wrong!"),
        ],
      ),
    );
  }
}
