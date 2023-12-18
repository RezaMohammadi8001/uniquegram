import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/data/model/user.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 22.0.w, top: 5.w),
      child: Column(
        children: [
          DottedBorder(
            dashPattern: const [15, 10],
            strokeWidth: 2,
            color: const Color(0xffF35383),
            borderType: BorderType.RRect,
            radius: const Radius.circular(17),
            padding: const EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: SizedBox(
                height: 58.w,
                width: 58.w,
                child: Image.network(
                  user.picture,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            user.name,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
