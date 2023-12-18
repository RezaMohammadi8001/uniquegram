import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/bloc/User/user_bloc.dart';
import 'package:uniquegram/bloc/User/user_event.dart';
import 'package:uniquegram/bloc/User/user_state.dart';
import 'package:uniquegram/widgets/add_story_widget.dart';
import 'package:uniquegram/widgets/post_widget.dart';
import 'package:uniquegram/widgets/story_widget.dart';

class HomeScrenn extends StatefulWidget {
  const HomeScrenn({super.key});

  @override
  State<HomeScrenn> createState() => _HomeScrennState();
}

class _HomeScrennState extends State<HomeScrenn> {
  @override
  void initState() {
    BlocProvider.of<UserBloc>(context).add(UserGetEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              pinned: true,
              toolbarHeight: 65.w,
              backgroundColor: const Color(0xff1C1F2E),
              flexibleSpace: Padding(
                padding: EdgeInsets.only(top: 20.w),
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
              child: Padding(
                padding: EdgeInsets.only(left: 17.0.w),
                child: SizedBox(
                  height: 100.w,
                  child: BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      if (state is UserLoadingState) {
                        return const SizedBox(
                          width: 30,
                          height: 20,
                        );
                      }
                      if (state is UserResponseState) {
                        var userList = state.userList;
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) => index == 0
                              ? const AddStoryWidget()
                              : StoryWidget(
                                  user: userList[index],
                                ),
                          itemCount: userList.length,
                        );
                      }
                      return const Text('data');
                    },
                  ),
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
      ),
    );
  }
}
