import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uniquegram/bloc/User/user_bloc.dart';
import 'package:uniquegram/screens/main_screen.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1f2E),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/switch_account_background.png',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 220,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        width: 340.w,
                        height: 352.w,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 32.w),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image(
                                width: 129.w,
                                height: 129.w,
                                image:
                                    const AssetImage('assets/images/pro2.jpg'),
                              ),
                            ),
                            SizedBox(height: 20.w),
                            const Text(
                              'Reza Mohammadi',
                              style: TextStyle(
                                fontFamily: 'GB',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20.w),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BlocProvider(
                                      create: (context) => UserBloc(),
                                      child: const MainScreen(),
                                    ),
                                  ),
                                );
                              },
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
                              child: const Text('Confirm'),
                            ),
                            SizedBox(height: 32.w),
                            const Text(
                              'switch Account',
                              style: TextStyle(
                                fontFamily: 'GB',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 63.0,
              top: 132.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "don't have an account? / ",
                  style: TextStyle(
                    fontFamily: 'GB',
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const Text(
                  'Sign up',
                  style: TextStyle(
                    fontFamily: 'GB',
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
