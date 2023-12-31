import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/data/model/user.dart';

class ProfileOfPost extends StatelessWidget {
  const ProfileOfPost({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.0.w),
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
            child: Image.network(
              user.picture,
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
