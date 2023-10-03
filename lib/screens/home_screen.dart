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
      appBar: AppBar(
        backgroundColor: const Color(0xff1C1F2E),
        centerTitle: false,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 17.w),
          child: const SizedBox(
            width: 128,
            height: 24,
            child: Text(
              'Uniquegram',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 17.w),
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 120.w,
              child: ListView.builder(
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
