import 'package:final_project/screens/signup.dart';
import 'package:flutter/material.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});
  static String id = ' Startpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Center(
              child: CircleAvatar(
                radius: 85,
                backgroundColor: Colors.lightBlue,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/66.png'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Emblema One'),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Stack(
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      width: double.infinity,
                      height: 550,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                          'EDU Gamers',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Concert One'),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          'Welcome to EduGamers \n Where Learning Meets Fun!',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlue),
                            onPressed: () {
                              Navigator.pushNamed(context, 'LoginPage');
                            },
                            child: const Text(
                              'لانشاء حساب جديد',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Signup.id);
                          },
                          child: const Text('تسجيل الدخول',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..quadraticBezierTo(size.width * 0.2, size.height * 0.2, size.width * 0.5,
          size.height * 0.1)
      ..quadraticBezierTo(size.width * 0.8, 0, size.width, size.height * 0.3)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
