import 'package:flutter/material.dart';

SizedBox circleAvatar(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.24,
    child: Stack(
      children: [
        ClipOval(
          child: Image.asset(
            "assets/circleavatar_logo.png",
            width: 120,
            height: 120,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.5,
          left: 0.5,
          child: CircleAvatar(
            maxRadius: 14,
                   minRadius: 12.0,
            child: Icon(Icons.business_center, size: 18, color: Colors.redAccent,),
          ),
        )
      ],
    ),
  );
}