import 'package:flutter/material.dart';
import 'package:saib_3/views/login_view.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  final _normalFontStyle = const TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/bg_landing.png')),
            ),
          ),
          SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/map_dots.png')),
              ),
            ),
          ),
          SafeArea(
            child: Stack(
              children: [
                Container(
                  height: screenSize.height * 0.35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/line.png')),
                  ),
                ),
                Positioned(
                    top: screenSize.height * 0.09,
                    left: screenSize.width * 0.2,
                    child: RotationTransition(
                        turns: const AlwaysStoppedAnimation(340 / 360),
                        child: Image.asset(
                          'assets/ic_drawer_plane.png',
                          scale: 3.5,
                        ))),
              ],
            ),
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: screenSize.height * 0.7,
                  width: screenSize.width * 0.7,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/logo_saib.png')),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: screenSize.height * 0.5,
                  child: Column(
                    children: [
                      Text(
                        'Welcome',
                        style: _normalFontStyle,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/ic_aboutus.png',
                                scale: 2.5,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'About Us',
                                style: _normalFontStyle,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/ic_locator.png',
                                scale: 2.5,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'ATM Locator',
                                style: _normalFontStyle,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/ic_phone.png',
                                scale: 2.5,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Contact Us',
                                style: _normalFontStyle,
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenSize.width * 0.1),
                        child: Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (ctx) =>
                                                  const LoginView()));
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Text(
                                        'Login',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenSize.width * 0.1),
                        child: Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Text(
                                        'Register',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ))),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
