import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hw6/entity/collections.dart';

class Listings extends StatefulWidget {
  Listings({Key? key}) : super(key: key);

  @override
  State<Listings> createState() => _ListingsState();
}

class _ListingsState extends State<Listings> {
  
  
  Future<List<Collections>> getCollections() async {
    var collectionList = <Collections>[];

    var c1 = Collections(
        collectionId: 1,
        collectionName: "Pudgy Penguins",
        name: "Pudgy Penguin #4643",
        imageName: "pudgyPenguin.png",
        price: 2.5831,
        numberOfLikes: 35,
        verified: true);

    // var c2 = Collections(
    //     collectionId: 2,
    //     collectionName: "CryptoPunks",
    //     name: "CryptoPunk #8519",
    //     imageName: "cryptoPunk.png",
    //     price: 31.3452,
    //     numberOfLikes: 78);

    var c2 = Collections(
        collectionId: 2,
        collectionName: "goblintown",
        name: "goblintown #6320",
        imageName: "goblinTown.png",
        price: 2.32451,
        numberOfLikes: 57,
        verified: true);

    var c3 = Collections(
        collectionId: 3,
        collectionName: "VeeFriends",
        name: "Joyous Jellyfish",
        imageName: "veeFriends.png",
        price: 8.2,
        numberOfLikes: 2,
        verified: false);

    var c4 = c1;
    var c5 = c2;
    var c6 = c3;

    collectionList.add(c1);
    collectionList.add(c2);
    collectionList.add(c3);
    collectionList.add(c4);
    collectionList.add(c5);
    collectionList.add(c6);

    return collectionList;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Collections>>(
      future: getCollections(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var collections = snapshot.data;

          return GridView.builder(
            itemCount: collections!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2 / 2.5),
            itemBuilder: (context, index) {
              var collection = collections[index];

              return Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(color: Colors.grey, width: 0.3),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:
                                  AssetImage("images/${collection.imageName}"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                collection.collectionName,
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 14),
                              ),
                              collection.verified
                                  ? Icon(
                                      Icons.verified,
                                      color: Colors.blue,
                                      size: 16,
                                    )
                                  : Container(),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              collection.name,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(children: [
                              SvgPicture.asset(
                                "images/eth.svg",
                                width: 14,
                                height: 14,
                              ),
                              Text(
                                collection.price.toStringAsFixed(3),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ]),
                            Container(),
                            Row(
                              children: [
                                const Icon(Icons.favorite_outline,
                                    color: Colors.grey, size: 16),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Text(
                                    collection.numberOfLikes.toString(),
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              );
            },
          );
        } else {
          return const Center();
        }
      },
    );
  }
}
