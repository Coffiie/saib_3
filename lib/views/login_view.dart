import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
                  height: screenSize.height * 0.25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/line.png')),
                  ),
                ),
                Positioned(
                    top: screenSize.height * 0.04,
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
                  height: screenSize.height * 0.5,
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
          Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.4,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.2),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: 'User Name',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.2),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          suffixIcon:
                              Icon(Icons.visibility, color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.17),
                    child: Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (val) {},
                          side: const BorderSide(color: Colors.white),
                        ),
                        const Text(
                          'Remember me',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.2),
                    child: Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {},
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
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide.none, primary: Colors.white),
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(decoration: TextDecoration.underline),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account',
                        style: TextStyle(color: Colors.white),
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide.none, primary: Colors.white),
                          onPressed: () {},
                          child: const Text(
                            'Register',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
