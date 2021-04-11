import 'package:flutter/material.dart';

Padding buildHeaderTitle({required String title, required bool isPlaying}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14.0),
    child: Text(
      title,
      style: TextStyle(
        color: isPlaying ? Colors.black : Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
