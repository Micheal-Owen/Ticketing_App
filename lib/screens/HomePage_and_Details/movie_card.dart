import 'package:cinemax/screens/HomePage_and_Details/details.dart';
import 'package:flutter/material.dart';
import 'package:cinemax/utils/app_layout.dart';
import 'package:cinemax/utils/styles.dart';

class MovieView extends StatelessWidget {
  final Map<String, dynamic> acacia;

  const MovieView({Key? key, required this.acacia}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(
                      title: '${acacia['title']}',
                      poster: '${acacia['poster']}',
                      description: '${acacia['description']}')));
        },
        child: Container(
            width: size.width * 0.6,
            height: 450,
            margin: const EdgeInsets.only(right: 30, top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                border: Border.all(
                  color: Colors.blue,
                ),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(24)),

            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Styles.primaryColor,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/${acacia['poster']}")))),
              const SizedBox(height: 20),
              Text(
                "${acacia['title']}",
                style: const TextStyle(color: Colors.white),
                textScaleFactor: 2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${acacia['rating'].toString()}/10",
                    style: const TextStyle(color: Colors.white),
                    textScaleFactor: 1.5,
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.star, color: Colors.yellow),
                  const SizedBox(width: 10),
                  const Text(
                    "Rating",
                    style: TextStyle(color: Colors.white),
                    textScaleFactor: 1.5,
                  )
                ],
              ),
            ])),
      ),
    );
  }
}
