import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/widgets/form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(50, 58, 153, 1),
            Color.fromRGBO(249, 139, 252, 1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 76.w,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/rocket.png'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff1C1F2E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 50.h),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign in to  ',
                                style: TextStyle(
                                  fontFamily: 'GB',
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Uniquegram',
                                style: TextStyle(
                                  fontFamily: 'GB',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF35383),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 36.w),
                          const FormWidget(),
                          SizedBox(height: 32.w),
                          const FormWidget(),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 50.0.w,
                              bottom: 32.0.w,
                              right: 150.w,
                              left: 150.w,
                            ),
                            child: SizedBox(
                              height: 46,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Sign in',
                                ),
                              ),
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Do'nt hvae an account? /",
                                style: TextStyle(
                                  fontFamily: 'gb',
                                  color: Color(0xffC5C5C5),
                                ),
                              ),
                              Text(
                                " Sign up",
                                style: TextStyle(
                                  fontFamily: 'gb',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
