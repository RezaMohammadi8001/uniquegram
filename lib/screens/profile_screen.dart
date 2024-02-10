import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1F2E),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(right: 17.0),
                    child: Icon(Icons.menu),
                  )
                ],
                backgroundColor: const Color(0xff1C1F2E),
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/coding_bg.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(10),
                  child: Container(
                    height: 15,
                    decoration: const BoxDecoration(
                      color: Color(0xff1C1F2E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 17),
                        Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2.0,
                              color: const Color(0xffF35383),
                            ),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                'assets/images/pro3.jpg',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),
                        const SizedBox(
                          height: 70,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Reza Mohammadi',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'SM',
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'rezamohammadi8001',
                                  style: TextStyle(
                                    color: Color(0xffC5C5C5),
                                    fontSize: 14,
                                    fontFamily: 'GB',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Image.asset('assets/images/icon_profile_edit.png'),
                        const SizedBox(width: 17),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Text(
                        '''Mobile Developer \u{1F4F1}
Lover of technology and a bit of a biologist \u{1F52C}''',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'sm',
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Image.asset(
                          'assets/images/icon_job.png',
                          width: 40,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Mobile Developer',
                          style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'gb',
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/images/icon_location.png',
                          width: 40,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Iran',
                          style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'gb',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          '8',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'gb',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Posts',
                          style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'gm',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          '1.2k',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'gb',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Followers',
                          style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'gm',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          '300',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'gb',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Following',
                          style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'gm',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50.h,
                          width: 190.w,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffF35383),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              textStyle: const TextStyle(
                                fontFamily: 'GB',
                                fontSize: 16,
                              ),
                            ),
                            child: const Text(
                              'Follow',
                              style: TextStyle(
                                fontFamily: 'GB',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                          width: 190.w,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Colors.white,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              'Message',
                              style: TextStyle(
                                fontFamily: 'GB',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        itemBuilder: (context, index) => _getAddStroryWidget(
                          index,
                          ['New', 'About me', 'Biology', 'Flutter', 'My Life'],
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: TabBarViewDelegate(
                  TabBar(
                    indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 17),
                    indicatorColor: const Color(0xffF35383),
                    indicatorWeight: 2.h,
                    tabs: [
                      Tab(
                        icon: Image.asset('assets/images/icon_posts_tab.png'),
                      ),
                      Tab(
                        icon:
                            Image.asset('assets/images/icon_bookmark_tab.png'),
                      ),
                    ],
                  ),
                ),
                pinned: true,
                floating: true,
              )
            ],
            body: TabBarView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 17.0, right: 17, top: 20),
                  child: CustomScrollView(
                    slivers: [
                      SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          childCount: 10,
                          (context, index) => ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset(
                                  'assets/images/nsmobile_wallpaper_h(${index + 1}).jpg'),
                            ),
                          ),
                        ),
                        gridDelegate: SliverQuiltedGridDelegate(
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          pattern: [
                            const QuiltedGridTile(1, 1),
                            const QuiltedGridTile(2, 2),
                            const QuiltedGridTile(1, 1),
                          ],
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 50),
                      )
                    ],
                  ),
                ),
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 100),
                          Lottie.asset(
                            'assets/lottieJson/not found.json',
                            repeat: false,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Nothing Found',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sm',
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getAddStroryWidget(int index, List<String> itemsName) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xff1C1F2E),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: index == 0
                        ? Image.asset(
                            'assets/images/icon_plus.png',
                          )
                        : FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset(
                              'assets/images/nsmobile_wallpaper_h($index).jpg',
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            itemsName[index],
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'gm',
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  TabBarViewDelegate(this._tabBar);
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return ColoredBox(
      color: const Color(0xff1C1F2E),
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
