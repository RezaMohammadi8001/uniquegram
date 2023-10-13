import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/utils/acticity_enum.dart';

Widget getActitvitysatus(BuildContext context, ActivityStatus status) {
  switch (status) {
    case ActivityStatus.followBack:
      return ElevatedButton(
        onPressed: () {},
        child: const Text('follow'),
      );
    case ActivityStatus.following:
      return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Color(0xffC5C5C5),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: const Text(
          'Message',
          style: TextStyle(
            fontFamily: 'GB',
            fontSize: 12,
            color: Color(0xffC5C5C5),
          ),
        ),
      );
    case ActivityStatus.likes:
      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: 40.w,
          width: 40.w,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset('assets/images/nsmobile_wallpaper_h(14).jpg'),
          ),
        ),
      );
  }
}
//******************************************************************/

class FollowingActivity extends StatelessWidget {
  const FollowingActivity({
    super.key,
    required this.activityStatus,
    required this.username,
    required this.activcityDetails,
    required this.time,
  });
  final ActivityStatus activityStatus;
  final String username;
  final String activcityDetails;
  final String time;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            EdgeInsets.only(left: 17.w, top: 20.h, bottom: 20.h, right: 17.w),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              height: 6,
              width: 6,
              decoration: const BoxDecoration(
                color: Color(0xffF35383),
                shape: BoxShape.circle,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 40.w,
                width: 40.w,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('assets/images/pro2.jpg'),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Wrap(
                spacing: 2,
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    activcityDetails,
                    style: const TextStyle(
                      color: Color(0xffC5C5C5),
                      fontFamily: 'GM',
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    time,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 5),
            getActitvitysatus(context, activityStatus),
          ],
        ),
      ),
    );
  }
}

class MessageActivity extends StatelessWidget {
  const MessageActivity({
    super.key,
    required this.activityStatus,
    required this.username,
    required this.activcityDetails,
    required this.time,
    required this.index,
  });
  final ActivityStatus activityStatus;
  final String username;
  final String activcityDetails;
  final String time;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            EdgeInsets.only(left: 17.w, top: 20.h, bottom: 20.h, right: 17.w),
        child: Row(
          children: [
            const SizedBox(
              height: 6,
              width: 16,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 40.w,
                width: 40.w,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child:
                      Image.asset('assets/images/nsmobile_wallpaper_h(12).jpg'),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Wrap(
                spacing: 2,
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    activcityDetails,
                    style: const TextStyle(
                      color: Color(0xffC5C5C5),
                      fontFamily: 'GM',
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    time,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 5),
            getActitvitysatus(context, activityStatus),
          ],
        ),
      ),
    );
  }
}
