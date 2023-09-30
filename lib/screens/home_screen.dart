import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

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
        title: const SizedBox(
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
        actions: [
          Container(
            width: 24,
            height: 24,
            margin: const EdgeInsets.only(right: 18.0),
            child: Image.asset(
              'assets/images/icon_direct.png',
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => index == 0
                    ? _getAddStroryWidget()
                    : _getListStoryBox(index),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getAddStroryWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column(
        children: [
          Container(
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
                child: Image.asset('assets/images/icon_plus.png'),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Your Story',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _getListStoryBox(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column(
        children: [
          DottedBorder(
            dashPattern: const [15, 10],
            strokeWidth: 2,
            color: const Color(0xffF35383),
            borderType: BorderType.RRect,
            radius: const Radius.circular(17),
            padding: const EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: SizedBox(
                height: 58,
                width: 58,
                child: Image.asset(
                  'assets/images/pro2.jpg',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'user',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
