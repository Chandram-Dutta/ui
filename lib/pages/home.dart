import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.secondaryContainer,
                const Color.fromARGB(255, 20, 71, 26),
                Theme.of(context).colorScheme.primary,
              ],
              stops: const [
                0.0,
                0.1,
                0.3,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Good afternoon",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    CupertinoButton(
                      onPressed: () {},
                      child: const Icon(
                        CupertinoIcons.bell,
                        color: Colors.white,
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: const Icon(
                        CupertinoIcons.timer,
                        color: Colors.white,
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: const Icon(
                        CupertinoIcons.gear,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Wrap(
                  children: const [
                    PlaylistTile(
                      name1: "My Friends",
                      assetName1: "assets/playlist/1.png",
                    ),
                    PlaylistTile(
                      name1: "Liked Songs",
                      assetName1: "assets/playlist/2.png",
                    ),
                    PlaylistTile(
                      name1: "Trending Hits\nIndia",
                      assetName1: "assets/playlist/3.png",
                    ),
                    PlaylistTile(
                      name1: "Discover\nWeekly",
                      assetName1: "assets/playlist/4.png",
                    ),
                    PlaylistTile(
                      name1: "Your Top\nSongs 2021",
                      assetName1: "assets/playlist/5.png",
                    ),
                    PlaylistTile(
                      name1: "Mega Hit Mix",
                      assetName1: "assets/playlist/6.png",
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Episodes for You",
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      BigPlaylistTile(
                        assetName: "assets/podcast/7.png",
                        name: "Lingo Bingo!",
                        authorName: "Inside The Yale\nAdmissions Office",
                      ),
                      BigPlaylistTile(
                        assetName: "assets/podcast/8.png",
                        name: "S8:E7 All Hail jQuery",
                        authorName: "DevDiscuss",
                      ),
                      BigPlaylistTile(
                        assetName: "assets/podcast/9.png",
                        name: "15: How Jamie OLiver...",
                        authorName: "HAIYAA with Nigel Ng",
                      ),
                      BigPlaylistTile(
                        assetName: "assets/podcast/10.png",
                        name: "301: Behind The Scenes...",
                        authorName: "The College Essay Guy",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Your Top Mixes",
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      BigPlaylistTile(
                        assetName: "assets/playlist/11.png",
                        name: "Justin Bieber Mix",
                        authorName: "Marshmello, Rita Ora,\nand More",
                      ),
                      BigPlaylistTile(
                        assetName: "assets/playlist/12.png",
                        name: "2010s Mix",
                        authorName: "Hailee Steinfeild, Rita Ora,\nand More",
                      ),
                      BigPlaylistTile(
                        assetName: "assets/playlist/13.png",
                        name: "Happy Mix",
                        authorName: "Zedd,Hailee Steinfeild,\nand More",
                      ),
                      BigPlaylistTile(
                        assetName: "assets/playlist/14.png",
                        name: "Taylor Swift Mix",
                        authorName: "Justin Bieber, The Vamps,\nand More",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
        const Player(),
      ],
    );
  }
}

class Player extends StatelessWidget {
  const Player({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 2,
      child: Container(
        color: const Color(0xFF2C2C2C),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Image.asset("assets/flyaway.jpeg"),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Fly Away",
                ),
                Text(
                  "Tones & I",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            const Spacer(),
            CupertinoButton(
              onPressed: () {},
              child: const Icon(
                CupertinoIcons.device_desktop,
                color: Colors.white,
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              child: const Icon(
                CupertinoIcons.heart,
                color: Colors.white,
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              child: const Icon(
                CupertinoIcons.play_fill,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BigPlaylistTile extends StatelessWidget {
  const BigPlaylistTile({
    Key? key,
    required this.assetName,
    required this.authorName,
    required this.name,
  }) : super(key: key);

  final String assetName;

  final String name;

  final String authorName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 175,
              width: 175,
              child: Image.asset(
                assetName,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            authorName,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

class PlaylistTile extends StatelessWidget {
  const PlaylistTile({
    Key? key,
    required this.name1,
    required this.assetName1,
  }) : super(key: key);

  final String name1;
  final String assetName1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Card(
        child: Row(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(assetName1),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                name1,
                style: const TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.fade,
                maxLines: 2,
                softWrap: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
