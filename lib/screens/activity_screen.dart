import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/utils/acticity_enum.dart';
import 'package:uniquegram/widgets/activity_item_widget.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
              child: TabBar(
                labelStyle: const TextStyle(
                  fontFamily: 'GB',
                  fontSize: 20,
                ),
                indicatorColor: const Color(0xffF35383),
                indicatorWeight: 2.h,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20.w),
                controller: tabController,
                tabs: const [
                  Text('Following'),
                  Text('You'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  CustomScrollView(
                    slivers: [
                      boxAdaptor(context, 'New'),
                      const FollowingActivity(
                        activityStatus: ActivityStatus.following,
                        username: 'Reza Moahammadi',
                        activcityDetails: 'started following you',
                        time: '53min',
                      ),
                      const MessageActivity(
                        activityStatus: ActivityStatus.likes,
                        username: ' ehsan98',
                        activcityDetails: 'and 23 others like your post',
                        time: '59min',
                        index: 98,
                      ),
                      const MessageActivity(
                        activityStatus: ActivityStatus.likes,
                        username: ' Asal23',
                        activcityDetails: 'and 23 others like your post',
                        time: '3h',
                        index: 65,
                      ),
                      const FollowingActivity(
                        activityStatus: ActivityStatus.likes,
                        username: 'Reza Moahammadi',
                        activcityDetails: 'liked your post',
                        time: '32min',
                      ),
                      boxAdaptor(context, 'Today'),
                      const MessageActivity(
                        activityStatus: ActivityStatus.followBack,
                        username: 'Ali Hassani',
                        activcityDetails: 'started following you',
                        time: '2h',
                        index: 4,
                      ),
                      boxAdaptor(context, 'This week'),
                      const MessageActivity(
                        activityStatus: ActivityStatus.followBack,
                        username: 'Ali Hassani',
                        activcityDetails: 'started following you',
                        time: '2h',
                        index: 8,
                      ),
                      const MessageActivity(
                        activityStatus: ActivityStatus.likes,
                        username: ' behnam0',
                        activcityDetails: 'and 23 others like your post',
                        time: '4h',
                        index: 80,
                      ),
                      const MessageActivity(
                        activityStatus: ActivityStatus.following,
                        username: ' mohammad',
                        activcityDetails: 'and 23 others like your post',
                        time: '13h',
                        index: 56,
                      ),
                    ],
                  ),
                  //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                  CustomScrollView(
                    slivers: [
                      boxAdaptor(context, 'New'),
                      const FollowingActivity(
                        activityStatus: ActivityStatus.following,
                        username: 'Reza Moahammadi',
                        activcityDetails: 'started following you',
                        time: '53min',
                      ),
                      const MessageActivity(
                        activityStatus: ActivityStatus.likes,
                        username: ' reza00',
                        activcityDetails: 'and 23 others like your post',
                        time: '5min',
                        index: 45,
                      ),
                      const FollowingActivity(
                        activityStatus: ActivityStatus.likes,
                        username: 'Reza Moahammadi',
                        activcityDetails: 'liked your post',
                        time: '32min',
                      ),
                      boxAdaptor(context, 'Today'),
                      const MessageActivity(
                        activityStatus: ActivityStatus.followBack,
                        username: 'Ali Hassani',
                        activcityDetails: 'started following you',
                        time: '2h',
                        index: 8,
                      ),
                      const MessageActivity(
                        activityStatus: ActivityStatus.likes,
                        username: ' saleh54',
                        activcityDetails: 'and 23 others like your post',
                        time: '4h',
                        index: 65,
                      ),
                      boxAdaptor(context, 'This week'),
                      const MessageActivity(
                        activityStatus: ActivityStatus.followBack,
                        username: 'Ali Hassani',
                        activcityDetails: 'started following you',
                        time: '2h',
                        index: 8,
                      ),
                      const MessageActivity(
                        activityStatus: ActivityStatus.following,
                        username: ' hassan',
                        activcityDetails: 'and 23 others like your post',
                        time: '5min',
                        index: 76,
                      ),
                      const MessageActivity(
                        activityStatus: ActivityStatus.likes,
                        username: ' kamal',
                        activcityDetails: 'and 23 others like your post',
                        time: '1h',
                        index: 23,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter boxAdaptor(BuildContext context, String text) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 32.0.h, left: 30.w),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
