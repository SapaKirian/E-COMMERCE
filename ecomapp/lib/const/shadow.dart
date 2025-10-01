import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shadow {
  static final verticalshadow = BoxShadow(
      color: Colors.grey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontalshadow = BoxShadow(
      color: Colors.grey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );
}
