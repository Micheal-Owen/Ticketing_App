import 'package:cinemax/screens/HomePage_and_Details/home_page.dart';
import 'package:flutter/material.dart';
import '../utils/styles.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 250),
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 80, maxHeight: 80),
                  child: Row(
                    children: const [
                      // Image(image: AssetImage(""))
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.all(40),
                  child: Text(
                    "Choose your preferred location",
                    style: Styles.headLineStyle2,
                  ),
                ),
                Positioned(
                  left: 0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage(
                                    location: 'ACACIA',
                                  )));
                    },
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/acacia.jfif"),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            bottomLeft: Radius.circular(24)),
                      ),
                      child: const Center(
                        child: Text(
                          "ACACIA",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Positioned(
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage(
                                    location: "METROPLEX NAALYA",
                                  )));
                    },
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/metroplex.jfif"),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        ),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24),
                            bottomRight: Radius.circular(24)),
                      ),
                      child: const Center(
                        child: Text(
                          "METROPLEX NAALYA",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Positioned(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage(
                                    location: 'ARENA MALL',
                                  )));
                    },
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/arena.jfif"),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            bottomLeft: Radius.circular(24)),
                      ),
                      child: const Center(
                        child: Text("ARENA MALL",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
