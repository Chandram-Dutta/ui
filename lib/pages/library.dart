// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Library extends StatelessWidget {
  const Library({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              const SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                  ],
                ),
              ),
              SliverAppBar(
                pinned: true,
                backgroundColor: Theme.of(context).colorScheme.primary,
                title: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        minRadius: 15,
                        foregroundImage: AssetImage("assets/flyaway.jpeg"),
                      ),
                    ),
                    Text(
                      "Your Library",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                actions: [
                  CupertinoButton(
                    onPressed: () {},
                    child: const Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: const Icon(
                      CupertinoIcons.plus,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          Tabs(name: "Playlists"),
                          Tabs(name: "Artists"),
                          Tabs(name: "Albums"),
                          Tabs(name: "Podcasts"),
                          Tabs(name: "Shows"),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        CupertinoButton(
                          onPressed: () {},
                          child: const Icon(
                            CupertinoIcons.arrow_up_arrow_down,
                            color: Colors.white,
                          ),
                        ),
                        const Text("Recently played"),
                        const Spacer(),
                        CupertinoButton(
                          onPressed: () {},
                          child: const Icon(
                            CupertinoIcons.list_bullet,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      children: const [
                        BigPlaylistTile(
                          assetName: "assets/playlist/1.png",
                          name: "My Friends",
                          authorName: "Chandram Dutta",
                        ),
                        BigPlaylistTile(
                          assetName: "assets/playlist/2.png",
                          name: "Liked Songs",
                          authorName: "Chandram Dutta",
                        ),
                        BigPlaylistTile(
                          assetName: "assets/playlist/3.png",
                          name: "Trending India",
                          authorName: "Zedd,Hailee Steinfeild,\nand More",
                        ),
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
                          assetName: "assets/podcast/10.png",
                          name: "301: Behind The Scenes...",
                          authorName: "The College Essay Guy",
                        ),
                        BigPlaylistTile(
                          assetName: "assets/playlist/14.png",
                          name: "Taylor Swift Mix",
                          authorName: "Justin Bieber, The Vamps,\nand More",
                        ),
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
                    const SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const Player()
      ],
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlineButton(
        shape: const StadiumBorder(),
        onPressed: () {},
        borderSide: const BorderSide(color: Colors.white),
        child: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
