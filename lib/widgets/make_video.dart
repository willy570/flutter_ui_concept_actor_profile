import 'package:flutter/material.dart';

Widget makeVideo({image}) {
  return AspectRatio(
    aspectRatio: 1.5 / 1,
    child: Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.3)
        ])),
        child: const Align(
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 70,
          ),
        ),
      ),
    ),
  );
}
