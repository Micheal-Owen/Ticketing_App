import 'package:cinemax/mapping.dart';
import 'package:flutter/material.dart';
import '../utils/styles.dart';
import 'movie_card.dart';
import 'package:cinemax/screens/coming_soon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("In Cinema Now...", style: Styles.headLineStyle2,),
              ],
            ),
          ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:  const EdgeInsets.only(left :20),
              child: Row(
                children: acacia.map((singleMovie) => MovieView(acacia:singleMovie)).toList()
              ),
           ),
          const SizedBox(height: 30),
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Coming Soon...", style: Styles.headLineStyle2,),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:  const EdgeInsets.only(left :20),
            child: Row(
                children: acaciaComing.map((movie) => ComingSoon(acaciaComing:movie)).toList()
            ),
          ),
        ],
      ),
    );
  }
}
