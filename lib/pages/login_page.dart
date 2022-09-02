import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: CustomPaint(
                    painter: LoginHeader(),
                  ),
                ),
                Positioned(
                  top: 60,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Login",
                          style:
                              Theme.of(context).textTheme.headline5?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(width: 80),
                        const Icon(
                          Icons.ac_unit_outlined,
                          color: Colors.white,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LoginHeader extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()..color = Colors.indigo.shade900;
    final paint2 = Paint()..color = const Color.fromRGBO(171, 214, 249, 0.7);
    final paint3 = Paint()..color = const Color.fromRGBO(44, 152, 240, 1);
    Path path1 = Path();
    path1.moveTo(0, 0);
    path1.lineTo(0, 150);
    path1.lineTo(size.width * 0.30, 150);
    path1.quadraticBezierTo(size.width * 0.35, 150, size.width * 0.40, 130);
    path1.lineTo(size.width * 0.70, 0);
    Path path2 = Path();
    path2.moveTo(size.width * 0.63, 0);
    path2.lineTo(size.width * 0.42, 82);
    path2.quadraticBezierTo(size.width * 0.32, 130, size.width * 0.55, 120);
    path2.lineTo(size.width * 0.83, 0);
    Path path3 = Path();
    path3.moveTo(size.width * 0.8, 0);
    path3.lineTo(size.width * 0.4, 170);
    path3.quadraticBezierTo(size.width * 0.35, 200, size.width * 0.45, 210);
    path3.lineTo(size.width * 0.90, 210);
    path3.quadraticBezierTo(size.width * 0.95, 210, size.width, 190);
    path3.lineTo(size.width, 0);

    canvas.drawPath(path1, paint1);
    canvas.drawPath(path2, paint2);
    canvas.drawPath(path3, paint3);
  }

  @override
  bool shouldRepaint(LoginHeader oldDelegate) => false;
}
