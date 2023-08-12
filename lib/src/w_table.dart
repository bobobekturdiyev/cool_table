import 'package:flutter/material.dart';

import 'w_td.dart';
import 'w_tr.dart';

/// Call WTR inside rows
class WTable extends StatelessWidget {
  final List<WTR> rows;
  final EdgeInsets padding;
  final Color dark;
  final Color light;
  final Color tableBackgroundColor;
  final Border? border;
  final bool displayNotFound;
  final String notFoundText;
  final TextStyle? notFoundTextStyle;
  final double width;

  const WTable({
    Key? key,
    required this.rows,
    this.padding = const EdgeInsets.all(16),
    this.dark = const Color(0xFFCDDEFC),
    this.light = const Color(0xFFFFFFFF),
    this.tableBackgroundColor = const Color(0xFFFFFFFF),
    this.border,
    this.notFoundTextStyle,
    this.displayNotFound = true,
    this.notFoundText = "No Data is found",
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !displayNotFound
        ? const SizedBox()
        : Container(
            constraints: BoxConstraints(maxWidth: width),
            padding: padding,
            decoration: BoxDecoration(
              color: tableBackgroundColor,
              border: border,
            ),
            child: Column(
              children: [
                if (rows.isEmpty) ...{
                  Container(
                    decoration: BoxDecoration(
                      color: dark,
                    ),
                    child: WTR(
                      children: [
                        WTD(
                          child: Text(
                            notFoundText,
                            style: notFoundTextStyle ??
                                const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  )
                } else ...{
                  ...List.generate(
                    rows.length,
                    (index) => Container(
                        decoration: BoxDecoration(
                          color: rows[index].color ??
                              (index % 2 == 0 ? dark : light),
                        ),
                        child: rows[index]),
                  ),
                }
              ],
            ),
          );
  }
}
