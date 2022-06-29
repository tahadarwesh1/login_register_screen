import 'package:flutter/material.dart';

navigateTo(context, page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
