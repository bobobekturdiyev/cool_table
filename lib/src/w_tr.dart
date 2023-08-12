import 'package:flutter/material.dart';

import 'w_td.dart';

class WTR extends StatefulWidget {
  final List<WTD> children;
  final Color? color;
  final Color? hoverColor;
  final EdgeInsets padding;
  final Border? border;

  const WTR({
    Key? key,
    required this.children,
    this.color,
    this.hoverColor = const Color(0xFFebfcff),
    this.border,
    this.padding = const EdgeInsets.all(16),
  }) : super(key: key);

  @override
  State<WTR> createState() => _WTRState();
}

class _WTRState extends State<WTR> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (h) {
        setState(() {
          hover = true;
        });
      },
      onExit: (h) {
        setState(() {
          hover = false;
        });
      },
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
          color: hover ? widget.hoverColor : widget.color,
          border: widget.border,
        ),
        child: Row(
          children: List.generate(
            widget.children.length,
            (index) => Expanded(
              flex: widget.children[index].flex,
              child: Container(
                  padding: widget.children[index].padding,
                  decoration: BoxDecoration(
                    border: widget.children[index].border,
                  ),
                  child: widget.children[index].child),
            ),
          ),
        ),
      ),
    );
  }
}
