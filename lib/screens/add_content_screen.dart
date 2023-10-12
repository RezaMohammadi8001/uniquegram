import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddContentScreen extends StatelessWidget {
  const AddContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1F2E),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 17.w, vertical: 27.w),
                    child: Row(
                      children: [
                        const Text(
                          'Post',
                          style: TextStyle(
                            fontFamily: 'GB',
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Image.asset('assets/images/icon_arrow_down.png'),
                        const Spacer(),
                        const Text(
                          'Next',
                          style: TextStyle(
                            fontFamily: 'GB',
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Image.asset('assets/images/icon_arrow_right_box.png'),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 33.w,
                      left: 17.w,
                      right: 17.w,
                      bottom: 10.w,
                    ),
                    height: 375.w,
                    width: 394.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/pro2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      childCount: 17,
                      (context, index) => ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset(
                            'assets/images/nsmobile_wallpaper_h(${index + 1}).jpg',
                          ),
                        ),
                      ),
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(bottom: 100.h),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
              child: Container(
                height: 60.h,
                color: const Color(0xff272B40),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Draft',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'GB',
                          color: const Color(0xffF35383),
                        ),
                      ),
                      Text(
                        'Gallery',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'GB',
                            color: Colors.white),
                      ),
                      Text(
                        'Take',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'GB',
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
