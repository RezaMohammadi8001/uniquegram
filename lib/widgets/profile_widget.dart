import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ProfileOfPost extends StatelessWidget {
  const ProfileOfPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: DottedBorder(
        dashPattern: const [15, 10],
        strokeWidth: 2,
        color: const Color(0xffF35383),
        borderType: BorderType.RRect,
        radius: const Radius.circular(17),
        padding: const EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: SizedBox(
            height: 58,
            width: 58,
            child: Image.asset(
              'assets/images/pro2.jpg',
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
