import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/svg/icons8-youtube.svg",
          ),
        ),
        titleSpacing: 10,
        title: const Text(
          "YouTube",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.cast,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.doorbell_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircleAvatar(
                    child: Stack(children: const [
                      Text(
                        "A",
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.history_outlined,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  "History",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(width: 220),
                Text(
                  "View All",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            HistoryYT(),
            const SizedBox(height: 10),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[800],
            ),
            HistoryIcon(),
            const SizedBox(height: 10),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[800],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Playlist",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  "Recently added",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                )
              ],
            ),
            HistoryIconS()
          ],
        ),
      ),
    );
  }
}

class HistoryYT extends StatelessWidget {
  var imagess = [
    "assets/images/rohith.jpg",
    "assets/images/YTsidemanthumbnaile.webp",
    "assets/images/PlayTIKTOK.jpg",
    "assets/images/playRap.jpg"
  ];

  var textsss = [
    "Rohith Sharma top\n10 pull shots",
    "1 vs 20 women |\nHarry Edition",
    "Tik Tok songs",
    "Rap songs"
  ];
  var textssss = ["Sports", "Sidemen", "Tik Tok", "Eminem"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: imagess.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 0,
                color: Colors.black,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      child: SizedBox(
                        height: 100,
                        width: 120,
                        child: Image(
                            image: AssetImage(imagess[index]),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Positioned(
                      bottom: 11,
                      left: 5,
                      child: Text(
                        textsss[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: -3,
                        left: 5,
                        child: Text(
                          textssss[index],
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class HistoryIcon extends StatelessWidget {
  final List _items = [
    const Icon(
      Icons.video_collection_outlined,
      color: Colors.white,
    ),
    const Icon(
      Icons.file_download_outlined,
      color: Colors.white,
    ),
    const Icon(
      Icons.personal_video,
      color: Colors.white,
    ),
  ];
  var info = ["Your videos", "Downloads\n20 recommendations", "Your movies"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        return Card(
          color: Colors.black,
          elevation: 0,
          child: ListTile(
            leading: _items[index],
            title: Text(info[index],
                style: const TextStyle(color: Colors.white, fontSize: 15)),
          ),
        );
      },
    );
  }
}

class HistoryIconS extends StatelessWidget {
  final List _itemss = [
    const Icon(
      Icons.add,
      color: Colors.blue,
    ),
    const Icon(
      Icons.watch_later_outlined,
      color: Colors.white,
    ),
    const Icon(
      Icons.thumb_up,
      color: Colors.white,
    ),
  ];
  var infos = [
    "New playlist",
    "Watch later\n6 unwatched videos",
    "Liked videos\n2,500 videos"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _itemss.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        return Card(
          color: Colors.black,
          elevation: 0,
          child: ListTile(
            leading: _itemss[index],
            title: Text(infos[index],
                style: const TextStyle(color: Colors.white, fontSize: 15)),
          ),
        );
      },
    );
  }
}
