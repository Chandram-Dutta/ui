import 'package:flutter/material.dart';
import 'package:ui/pages/home.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 40,
                        bottom: 20,
                      ),
                      child: Text(
                        "Search",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SliverAppBar(
                pinned: true,
                title: Column(
                  children: [
                    TextField(
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: "Artists, songs, or podcasts",
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Your top genres",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Wrap(
                        children: const [
                          SearchCard(
                            color: Color.fromARGB(255, 196, 0, 196),
                            name: "Pop",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 25, 131, 11),
                            name: "Dance/\nElectronic",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 11, 103, 131),
                            name: "Hip-Hop",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 76, 0, 255),
                            name: "Indie",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 196, 12, 12),
                            name: "Rock",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 158, 135, 2),
                            name: "EDM",
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Browse All",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Wrap(
                        children: const [
                          SearchCard(
                            color: Color.fromARGB(255, 196, 0, 196),
                            name: "Pop",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 25, 131, 11),
                            name: "Dance/\nElectronic",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 11, 103, 131),
                            name: "Hip-Hop",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 76, 0, 255),
                            name: "Indie",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 196, 12, 12),
                            name: "Rock",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 158, 135, 2),
                            name: "EDM",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 196, 0, 196),
                            name: "Hindi",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 25, 131, 11),
                            name: "Bollywood",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 11, 103, 131),
                            name: "Bengali",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 76, 0, 255),
                            name: "Marathi",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 196, 12, 12),
                            name: "Folk",
                          ),
                          SearchCard(
                            color: Color.fromARGB(255, 158, 135, 2),
                            name: "Metal",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Player()
      ],
    );
  }
}

class SearchCard extends StatelessWidget {
  const SearchCard({
    Key? key,
    required this.color,
    required this.name,
  }) : super(key: key);

  final Color? color;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Center(
          child: Text(name),
        ),
        height: 75,
        width: MediaQuery.of(context).size.width * 0.42,
      ),
    );
  }
}
