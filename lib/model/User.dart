import 'package:flutter/material.dart';

class User {
  final String imagePath;
  final String name;
  final String email;
  final String about;
  final bool isDarkmode;

  const User({
  required this.imagePath,
  required this.name,
  required this.email,
  required this.about,
  required this.isDarkmode,
});
}