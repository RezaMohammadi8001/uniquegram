import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _getlayout(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff1C1F2E),
        currentIndex: _currentIndex,
        selectedFontSize: 20,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_home.png'),
            activeIcon: Image.asset('assets/images/icon_active_home.png'),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_search_navigation.png'),
            activeIcon:
                Image.asset('assets/images/icon_search_navigation_active.png'),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_add_navigation.png'),
            activeIcon:
                Image.asset('assets/images/icon_add_navigation_active.png'),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_activity_navigation.png'),
            activeIcon: Image.asset(
              'assets/images/icon_activity_navigation_active.png',
            ),
            label: 'activity',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 26.0.w,
              height: 26.0.w,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: const Color(0xffC5C5C5),
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(
                    'assets/images/pro3.jpg',
                  ),
                ),
              ),
            ),
            activeIcon: Container(
              width: 26.0.w,
              height: 26.0.w,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: const Color(0xffF35383),
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(
                    'assets/images/pro3.jpg',
                  ),
                ),
              ),
            ),
            label: 'activity',
          ),
        ],
      ),
    );
  }

  List<Widget> _getlayout() {
    return <Widget>[
      const HomeScrenn(),
      const HomeScrenn(),
      const HomeScrenn(),
      const HomeScrenn(),
    ];
  }
}
