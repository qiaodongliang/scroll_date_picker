import 'package:flutter/material.dart';

class DLDatePickerOptions {
  const DLDatePickerOptions({
    this.itemExtent = 40.0,
    this.diameterRatio = 3,
    this.perspective = 0.01,
    this.loop = true,
    this.backgroundColor,
    this.indicatorBackgroundColor,
  });

  /// Size of each child in the main axis
  final double itemExtent;

  /// {@macro flutter.rendering.wheelList.diameterRatio}
  final double diameterRatio;

  /// {@macro flutter.rendering.wheelList.perspective}
  final double perspective;

  /// The loop iterates on an explicit list of values
  final bool loop;

  /// The color to paint behind the date picker
  final Color? backgroundColor;

  /// The color to paint selectedBackground the date picker
  final Color? indicatorBackgroundColor;
}
