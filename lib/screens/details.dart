import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/styles.dart';

class Details extends StatelessWidget {
  final String title;
  final String description;
  final String poster;
  const Details({Key? key, required this.title, required this.poster, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
        width: size.width*0.6,
        height: 650,
        margin: const EdgeInsets.only(right:7, top:35),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical:17),
        decoration: BoxDecoration(
            color: Styles.primaryColor,
            borderRadius: BorderRadius.circular(24)
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                  constraints: BoxConstraints(maxHeight:450),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Styles.primaryColor,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/$poster")
                          )
                      )
                  ),
              ),
              const SizedBox(height:5),
              Row(
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(title, style: const TextStyle(color: Colors.white, decoration: TextDecoration.none), textScaleFactor: 0.8),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height:15),
                  Text(description,style: const TextStyle(color: Colors.white, decoration: TextDecoration.none), textScaleFactor: 0.35,),
                  const SizedBox(height: 15,),
                  Center(child: ElevatedButton(onPressed: (){}, child: const Text("BOOK SEAT"),))
                ],
              ),
    )

    ]
    )
                );

  }
}
