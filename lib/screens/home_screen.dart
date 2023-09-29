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
          child: Text('Uniquegram,'),
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
                itemBuilder: (context, index) => _getListStoryBox(index),
              ),
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
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: SizedBox(
                height: 58,
                width: 58,
                child: Image.asset(
                  'assets/images/pro2.jpg',
                  height: 100,
                  width: 100,
                )),
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
