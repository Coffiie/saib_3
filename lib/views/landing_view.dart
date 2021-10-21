import 'package:flutter/material.dart';
import 'package:saib_3/views/login_view.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView>
    with TickerProviderStateMixin {
  final _normalFontStyle = const TextStyle(color: Colors.white);
  late AnimationController _iconsController;
  late Animation _iconsAnimation;
  final int _iconsMilliseconds = 600;

  late AnimationController _logoController;
  late Animation _logoAnimation;
  final int _logoAnimMilliseconds = 1000;

  late AnimationController _planeController;
  late Animation _planeAnimation;
  final int _planeAnimMilliseconds = 2000;

  bool _isPlaneForwarded = false;

  @override
  void initState() {
    _iconsController = AnimationController(
        vsync: this, duration: Duration(milliseconds: _iconsMilliseconds));
    _iconsAnimation =
        CurvedAnimation(parent: _iconsController, curve: Curves.easeIn);

    _logoController = AnimationController(
        vsync: this, duration: Duration(milliseconds: _logoAnimMilliseconds));
    _logoAnimation =
        CurvedAnimation(parent: _logoController, curve: Curves.easeInOut);

    _planeController = AnimationController(
        vsync: this, duration: Duration(milliseconds: _planeAnimMilliseconds));
    _planeAnimation =
        CurvedAnimation(parent: _planeController, curve: Curves.easeInExpo);
    goForward();

    super.initState();
  }

  Future<void> goForward() async {
    _iconsController.forward();
    _logoController.reverse(from: 1);
  }

  @override
  void dispose() {
    _flushAllControllers();
    super.dispose();
  }

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                    child: Container(
                      height: screenSize.height * 0.7,
                      width: screenSize.width * 0.7,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/logo_saib.png')),
                      ),
                    ),
                    animation: _logoAnimation,
                    builder: (context, child) {
                      return Transform.translate(
                          offset: Offset(_logoAnimation.value * -100, 0),
                          child: Opacity(
                            opacity: (1 - _logoAnimation.value).toDouble(),
                            child: child,
                          ));
                    }),
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
                              AnimatedBuilder(
                                child: Image.asset(
                                  'assets/ic_aboutus.png',
                                  scale: 2.5,
                                ),
                                animation: _iconsAnimation,
                                builder: (context, child) => Transform.scale(
                                    scale: _iconsAnimation.value, child: child),
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
                              AnimatedBuilder(
                                child: Image.asset(
                                  'assets/ic_locator.png',
                                  scale: 2.5,
                                ),
                                animation: _iconsAnimation,
                                builder: (context, child) => Transform.scale(
                                    scale: _iconsAnimation.value, child: child),
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
                              AnimatedBuilder(
                                child: Image.asset(
                                  'assets/ic_phone.png',
                                  scale: 2.5,
                                ),
                                animation: _iconsAnimation,
                                builder: (context, child) => Transform.scale(
                                    scale: _iconsAnimation.value, child: child),
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
                    child: GestureDetector(
                      onTap: () async {
                        print('tapped');
                        if (!_isPlaneForwarded) {
                          await _planeController.forward(from: 1);
                          _isPlaneForwarded = true;
                          await Future.delayed(const Duration(seconds: 2));
                          await _planeController.reverse();
                          _isPlaneForwarded = false;
                        }
                      },
                      child: RotationTransition(
                          turns: const AlwaysStoppedAnimation(340 / 360),
                          child: AnimatedBuilder(
                            builder: (context, child) {
                              return Transform.scale(
                                scale: _planeAnimation.value * 1.5 <= 1
                                    ? 1
                                    : _planeAnimation.value * 1.5,
                                child: child,
                              );
                            },
                            animation: _planeAnimation,
                            child: Image.asset(
                              'assets/ic_drawer_plane.png',
                              scale: 3.5,
                            ),
                          )),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _flushAllControllers() {
    _iconsController.dispose();
    _logoController.dispose();
    _planeController.dispose();
  }
}
