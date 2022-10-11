import 'package:cinemax/models/mapping.dart';
import 'package:cinemax/screens/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:cinemax/utils/styles.dart';
import 'movie_card.dart';
import 'package:cinemax/screens/HomePage_and_Details//coming_soon.dart';

class HomePage extends StatelessWidget {
  final String location;

  const HomePage({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(location, style: TextStyle(color: Colors.blueGrey),),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
              ),
              // backgroundColor: Styles.primaryColor,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
            icon: const Icon(Icons.person),
            label: const Text("Profile"),
          ),
        ],
        // backgroundColor: Styles.primaryColor,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: acacia
                    .map((singleMovie) => MovieView(acacia: singleMovie))
                    .toList()),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Coming Soon...",
                  style: Styles.headLineStyle2,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: acaciaComing
                    .map((movie) => ComingSoon(acaciaComing: movie))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
