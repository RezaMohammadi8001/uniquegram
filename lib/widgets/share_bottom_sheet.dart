import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/bloc/User/user_bloc.dart';
import 'package:uniquegram/bloc/User/user_state.dart';
import 'package:uniquegram/data/model/user.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({super.key, this.scrollController});
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          color: const Color.fromRGBO(255, 255, 255, 0.1),
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserResponseState) {
                var userList = state.userList;
                return _gridContent(context, userList);
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }

  Column bottomSheetHeader(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 5,
            width: 65,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 37),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'share',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'GB',
              ),
            ),
            Image(
              image: AssetImage('assets/images/icon_share_bottomsheet.png'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: SizedBox(
            height: 46,
            width: 340,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Image.asset('assets/images/icon_search.png'),
                hintText: 'Search...',
                filled: true,
                fillColor: Colors.white.withOpacity(0.4),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }

  Widget _gridContent(BuildContext context, List<User> userList) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          controller: scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: bottomSheetHeader(context),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => _getGridItem(index, userList[index]),
                childCount: userList.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 30,
                crossAxisSpacing: 20,
                mainAxisExtent: 110,
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(top: 100))
          ],
        ),
        Positioned(
          bottom: 30,
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Center(
                    child: Text(
                      'your message send sucssesfuly',
                      style: TextStyle(
                        color: Color(0xffF35383),
                        fontFamily: 'sm',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  shape: const StadiumBorder(),
                  behavior: SnackBarBehavior.floating,
                  padding: const EdgeInsets.all(20),
                  elevation: 5,
                  width: 360.w,
                  backgroundColor: Colors.white.withOpacity(0.3),
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Send'),
          ),
        )
      ],
    );
  }

  Widget _getGridItem(int index, User user) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SizedBox(
            width: 60,
            height: 60,
            child: Image.network(
              user.picture,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          user.name,
          style: const TextStyle(color: Colors.white, fontFamily: 'gb'),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
