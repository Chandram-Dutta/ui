import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            CustomPaint(
              painter: LandingBG(context: context),
            ),
            Center(
              child: Text(
                "F\nI\nN\nA\nN\nC\nE\n.",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 50,
              right: -18,
              child: MaterialButton(
                padding: const EdgeInsets.all(20),
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/home');
                },
                shape: const StadiumBorder(),
                color: Theme.of(context).colorScheme.primaryContainer,
                textColor: Theme.of(context).colorScheme.primary,
                child: Row(
                  children: const [
                    Text(
                      "Start",
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        CupertinoIcons.arrow_right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LandingBG extends CustomPainter {
  LandingBG({required this.context});
  BuildContext context;
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Paint()
      ..color = Theme.of(context).colorScheme.secondary
      ..style = PaintingStyle.fill;
    var circle = Paint()
      ..color = Theme.of(context).colorScheme.secondaryContainer
      ..style = PaintingStyle.fill;
    canvas.drawRect(
      const Offset(0, 0) &
          Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height,
          ),
      rect,
    );
    canvas.drawCircle(
      Offset(
        MediaQuery.of(context).size.width * 0.5,
        100,
      ),
      MediaQuery.of(context).size.width * 0.6,
      circle,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
