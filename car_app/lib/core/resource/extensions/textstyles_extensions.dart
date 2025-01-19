import 'package:flutter/material.dart';

extension TextstylesExtension on TextStyle {
  TextStyle setSize(double size) => copyWith(fontSize: size);
}