import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String buttonName;
  final Function handler;
  const AdaptiveFlatButton(
      {Key? key, required this.buttonName, required this.handler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text('Choose Date'),
            onPressed: () {
              handler();
            },
            color: Colors.purple,
          )
        : TextButton(
            child: Text(
              'Choose Date',
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            onPressed: () {
              handler();
            },
          );
  }
}
