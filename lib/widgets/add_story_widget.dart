import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddStoryWidget extends StatelessWidget {
  const AddStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0.w, top: 5.w),
      child: Column(
        children: [
          Container(
            width: 64.w,
            height: 64.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 60.w,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xff1C1F2E),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/images/icon_plus.png'),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Your Story',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
