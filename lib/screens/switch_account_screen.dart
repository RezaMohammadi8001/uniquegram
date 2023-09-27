import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:uniquegram/screens/login_screen.dart';

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
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        width: 340,
                        height: 352,
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
                            const SizedBox(height: 32),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: const Image(
                                width: 120,
                                height: 120,
                                image: AssetImage('assets/images/pro2.jpg'),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Reza Mohammadi',
                              style: TextStyle(
                                fontFamily: 'GB',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
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
                            const SizedBox(height: 20),
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
