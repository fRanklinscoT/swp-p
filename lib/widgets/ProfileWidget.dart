import 'package:flutter/material.dart';
import 'dart:io';


class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return GestureDetector(
      onTap: onClicked,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: color,
              child: CircleAvatar(
                radius: 58,
                backgroundImage: FileImage(File(imagePath)),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Influencer connect',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'Influencers: 100',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Sponsors: 50',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'following: 50',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
