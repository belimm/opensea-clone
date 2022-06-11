import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hw6/homePage.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  final double coverHeight = 100;
  final double profileHeight = 90;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return buildTop();
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;

    

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          child: buildCoverImage(),
        ),
        Positioned(top: top, child: buildProfileImage()),
        Positioned(
          top:top+120,
          child: buildProfileDetail()
        )
        
      ],
    );
  }

  Widget buildCoverImage() {
    return Container(
        width: double.infinity,
        height: coverHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/profileBanner.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(5),
                  ),
                  child: const Icon(
                    Icons.share,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(5),
                  ),
                  child: const Icon(
                    Icons.logout,
                    color: Colors.grey,
                    size: 20,
                  ),
                )
              ],
            ),
          ],
        ));
  }

  Widget buildProfileImage() {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      CircleAvatar(
        backgroundColor: Colors.white,
        radius: profileHeight / 2,
        child: CircleAvatar(
            backgroundImage: const NetworkImage(
                "https://avatars.githubusercontent.com/u/76854271?v=4"),
            radius: profileHeight / 2 - 3),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Icon(
            Icons.verified,
            color: Colors.green,
            size: 18,
          ),
        ],
      ),
    ]));
  }

  Widget buildProfileDetail() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Berk Limoncu",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("0x3267fAaA...398C424",),
              Container(width: 10,height: 10,),
              const Icon(
                Icons.copy_rounded,
                color: Colors.grey,
                size: 18,
              ),
              
              
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.white,
                  primary: const Color.fromARGB(255, 202, 196, 196),
                  
                  
                  padding: EdgeInsets.all(5),
                ),
                onPressed: (){}, 
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.grid_on,color: Color.fromARGB(248, 90, 89, 89),),
                      Container(width: 10,),
                      const Text("Collected 6",style:TextStyle(color: Color.fromARGB(248, 90, 89, 89)))
                    ]
                  ),
                )
              ),
              Container(width: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shadowColor: Colors.white,
                  
                  padding: EdgeInsets.all(5),
                ),
                onPressed: (){}, 
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.imagesearch_roller_sharp,color: Color.fromARGB(248, 90, 89, 89),size: 18,),
                      Container(width: 10,),
                      const Text("Created 10",style: TextStyle(color: Color.fromARGB(248, 90, 89, 89)),)
                    ]
                  ),
                )
              ),
              Container(width: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.white,
                  primary: Colors.white,
                  
                  padding: EdgeInsets.all(5),
                ),
                onPressed: (){}, 
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.favorite_outline,color: Color.fromARGB(248, 90, 89, 89),),
                      Container(width: 10,),
                      const Text("Favorited 117",style: TextStyle(color: Color.fromARGB(248, 90, 89, 89)),)
                    ]
                  ),
                )
              ),
              
              
              
              
              
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.white,
                    border:Border.all(
                      color: Colors.grey,
                      width: 0.5
                    )
                  ),
                  width: 380,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:const[
                      Padding(
                        padding: EdgeInsets.only(left:10),
                        child: Icon(Icons.search,color: Colors.grey,),
                      ),
                      Text("  Search items",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.grey),)
                    ]

                  ),
                  ),
          )
          
          
          
        ],
      ),
    );
  }
}
