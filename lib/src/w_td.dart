import 'package:flutter/material.dart';

class WTD {
  final int flex;
  final Widget child;
  final EdgeInsets? padding;
  final Border? border;
  const WTD({
    this.flex = 1,
    this.padding,
    this.border,
    required this.child,
  });
}
