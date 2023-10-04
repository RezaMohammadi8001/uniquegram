import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/widgets/add_story_widget.dart';
import 'package:uniquegram/widgets/post_widget.dart';
import 'package:uniquegram/widgets/story_widget.dart';

class HomeScrenn extends StatelessWidget {
  const HomeScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1F2E),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            toolbarHeight: 65.w,
            backgroundColor: const Color(0xff1C1F2E),
            flexibleSpace: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30.0.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 27.w),
                    child: const Text(
                      'Uniquegram',
                      style: TextStyle(
                        fontFamily: 'GB',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffF35383),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 27.w),
                    child: SizedBox(
                      width: 24.w,
                      height: 24.w,
                      child: Image.asset(
                        'assets/images/icon_direct.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100.w,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => index == 0
                    ? Padding(
                        padding: EdgeInsets.only(left: 17.0.w),
                        child: const AddStoryWidget(),
                      )
                    : const StoryWidget(),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const PostWidget(),
            ),
          )
        ],
      ),
    );
  }
}
