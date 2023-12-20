import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/data/model/user.dart';
import 'package:uniquegram/widgets/profile_widget.dart';
import 'package:uniquegram/widgets/share_bottom_sheet.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key, required this.user,required this.index});
  final User user;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.0.w, vertical: 10.w),
          child: Row(
            children: [
              ProfileOfPost(
                user: user,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: const TextStyle(
                        fontFamily: 'SM',
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      user.userName,
                      style: const TextStyle(
                        fontFamily: 'SM',
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          height: 394.w,
          width: 394.w,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Positioned(
                bottom: 30.w,
                top: 0.0,
                right: 10.w,
                left: 10.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/nsmobile_wallpaper_h($index).jpg',
                    width: 360.w,
                    height: 330.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 15.w,
                right: 30.w,
                child: Image.asset('assets/images/icon_video.png'),
              ),
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                    child: Container(
                      height: 46.w,
                      width: 340.w,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.5),
                            Color.fromRGBO(255, 255, 255, 0.2),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 15),
                          Row(
                            children: [
                              const Icon(
                                Icons.favorite_border_outlined,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(width: 6.w),
                              const Text(
                                '2.5 K',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GB',
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 30.w),
                          Row(
                            children: [
                              Image.asset('assets/images/icon_comments.png'),
                              const SizedBox(width: 6),
                              const Text(
                                '1.5 K',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GB',
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 42.w),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => Padding(
                                      padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom,
                                      ),
                                      child: DraggableScrollableSheet(
                                        maxChildSize: 0.7,
                                        minChildSize: 0.4,
                                        builder: (context, scrollController) =>
                                            ShareBottomSheet(
                                          scrollController: scrollController,
                                        ),
                                      ),
                                    ),
                                    barrierColor: Colors.transparent,
                                    backgroundColor: Colors.transparent,
                                  );
                                },
                                child:
                                    Image.asset('assets/images/icon_share.png'),
                              ),
                            ],
                          ),
                          SizedBox(width: 42.w),
                          Row(
                            children: [
                              Image.asset('assets/images/icon_save.png'),
                            ],
                          ),
                          SizedBox(width: 15.w),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
