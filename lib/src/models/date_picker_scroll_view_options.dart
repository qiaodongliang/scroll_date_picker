import 'package:flutter/material.dart';

class DLDatePickerScrollViewOptions {
  const DLDatePickerScrollViewOptions({
    this.year = const DLScrollViewDetailOptions(margin: EdgeInsets.all(4)),
    this.month = const DLScrollViewDetailOptions(margin: EdgeInsets.all(4)),
    this.day = const DLScrollViewDetailOptions(margin: EdgeInsets.all(4)),
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final DLScrollViewDetailOptions year;
  final DLScrollViewDetailOptions month;
  final DLScrollViewDetailOptions day;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  // Applies the given [DLScrollViewDetailOptions] to all three options ie. year, month and day.
  static DLDatePickerScrollViewOptions all(DLScrollViewDetailOptions value) {
    return DLDatePickerScrollViewOptions(
      year: value,
      month: value,
      day: value,
    );
  }
}

class DLScrollViewDetailOptions {
  const DLScrollViewDetailOptions({
    this.label = '',
    this.alignment = Alignment.center,
    this.margin,
    this.selectedTextStyle =
        const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    this.textStyle =
        const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
  });

  /// The text printed next to the year, month, and day.
  final String label;

  /// The year, month, and day text alignment method.
  final Alignment alignment;

  /// The amount of space that can be added to the year, month, and day.
  final EdgeInsets? margin;

  /// An immutable style describing how to format and paint text.
  final TextStyle textStyle;

  /// An invariant style that specifies the selected text format and explains how to draw it.
  final TextStyle selectedTextStyle;
}
