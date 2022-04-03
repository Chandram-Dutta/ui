import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    CustomPaint(
                      painter: AppBarBG(context: context),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "Portfolio",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    CupertinoButton(
                      child:
                          const Icon(CupertinoIcons.line_horizontal_3_decrease),
                      color: Colors.white,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AppBarBG extends CustomPainter {
  AppBarBG({required this.context});
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
            MediaQuery.of(context).size.height * 0.45,
          ),
      rect,
    );
    canvas.drawCircle(
      const Offset(
        0,
        100,
      ),
      200,
      circle,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
