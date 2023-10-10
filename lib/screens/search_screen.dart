import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:uniquegram/widgets/cuatom_choice_chip.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> choices = [
      'All',
      'Account',
      'Hashtag',
      'Story',
      'Caption',
      'Comment'
    ];
    return Scaffold(
      backgroundColor: const Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 17.0.w, vertical: 20.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 50.h,
                    width: 394.w,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon:
                            Image.asset('assets/images/icon_search.png'),
                        suffixIcon: Image.asset('assets/images/icon_scan.png'),
                        hintText: 'Search...',
                        hintStyle: const TextStyle(
                          fontFamily: 'GB',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: const Color(0xff272B40),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 35.w,
                margin: EdgeInsets.only(
                  top: 10.w,
                  bottom: 20.w,
                  left: 9.w,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: choices.length,
                  itemBuilder: (context, index) => SizedBox(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: SizedBox(
                        child: CustomChoiceChip(choices: choices[index]),
                      ),
                    ),
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
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: [
                    const QuiltedGridTile(2, 1),
                    const QuiltedGridTile(2, 2),
                    const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(1, 1)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
