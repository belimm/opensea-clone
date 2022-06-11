import 'package:flutter/material.dart';
import 'package:hw6/entity/collections.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hw6/widgets/bottomNavBar.dart';
import 'package:hw6/widgets/listings.dart';
import 'package:hw6/widgets/profile.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ProfileScreen(),
          

          Container(
            margin: const EdgeInsets.only(top: 300),
            child: Listings()
          ),
        ]
      ),
      bottomNavigationBar: const BottomNavBar()
    );
  }
}


