import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
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
                    height: 300,
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
                    vertical: 40,
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Portfolio",
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const Spacer(),
                          CupertinoButton(
                            child: Icon(
                              CupertinoIcons.line_horizontal_3_decrease,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 30,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Current Balance",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: Colors.black),
                                  ),
                                  const Spacer(),
                                  const FaIcon(
                                    FontAwesomeIcons.creditCard,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              Text(
                                "\$45,849.18",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "3947 3820 3920 2840",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "07/28",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: Colors.grey[700],
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Services",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ActionButton(
                          children: [
                            Icon(
                              CupertinoIcons.qrcode_viewfinder,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Scan & Pay",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            )
                          ],
                        ),
                        ActionButton(
                          children: [
                            Icon(
                              CupertinoIcons.arrow_up_circle_fill,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Send Money",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            )
                          ],
                        ),
                        ActionButton(
                          children: [
                            Icon(
                              CupertinoIcons.arrow_down_circle_fill,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Receive Money",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "Charts",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white12,
              child: ListTile(
                leading: const Icon(CupertinoIcons.bitcoin_circle_fill),
                iconColor: Colors.yellowAccent,
                title: Row(
                  children: const [
                    Text("BTC"),
                    Spacer(),
                    Text("\$29,849.12"),
                  ],
                ),
                subtitle: Row(
                  children: const [
                    Text("+ 1.6%"),
                    Spacer(),
                    Text("2.67 BTC"),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white12,
              child: ListTile(
                leading: const FaIcon(FontAwesomeIcons.ethereum),
                iconColor: Colors.blue,
                title: Row(
                  children: const [
                    Text("ETH"),
                    Spacer(),
                    Text("\$45,849.18"),
                  ],
                ),
                subtitle: Row(
                  children: const [
                    Text("+ 4.6%"),
                    Spacer(),
                    Text("57.67 ETH"),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white12,
              child: ListTile(
                leading: const FaIcon(FontAwesomeIcons.litecoinSign),
                iconColor: Colors.red,
                title: Row(
                  children: const [
                    Text("LTC"),
                    Spacer(),
                    Text("\$9,847.82"),
                  ],
                ),
                subtitle: Row(
                  children: const [
                    Text("- 0.6%"),
                    Spacer(),
                    Text("8.67 LTC"),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white12,
              child: ListTile(
                leading: const FaIcon(FontAwesomeIcons.monero),
                iconColor: Colors.orange,
                title: Row(
                  children: const [
                    Text("XMR"),
                    Spacer(),
                    Text("\$849.95"),
                  ],
                ),
                subtitle: Row(
                  children: const [
                    Text("- 3.6%"),
                    Spacer(),
                    Text("7.67 XMR"),
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

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, top: 20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {},
        height: 125,
        minWidth: 125,
        splashColor: Theme.of(context).colorScheme.primary,
        color: Colors.white24,
        hoverColor: Theme.of(context).colorScheme.primaryContainer,
        child: Column(
          children: children,
        ),
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
            300,
          ),
      rect,
    );
    canvas.drawCircle(
      const Offset(
        0,
        150,
      ),
      250,
      circle,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
