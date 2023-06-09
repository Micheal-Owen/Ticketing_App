import 'package:cinemax/screens/HomePage_and_Details/date_picker.dart';
import 'package:flutter/material.dart';
import 'package:cinemax/utils/app_layout.dart';
import 'package:cinemax/utils/styles.dart';

class Details extends StatelessWidget {
  final String title;
  final String description;
  final String poster;
  const Details(
      {Key? key,
      required this.title,
      required this.poster,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Styles.primaryColor,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios) ,
            onPressed: () =>  Navigator.of(context).pop(),
          )
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
                width: size.width * 0.95,
                height: 700,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24)),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 430),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Styles.primaryColor,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/$poster")))),
                  ),
                  const SizedBox(height: 5),
                  Row(),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(title,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.none),
                                    textScaleFactor: 2),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Text(
                          description,
                          style: const TextStyle(
                              color: Colors.black, decoration: TextDecoration.none),
                          textScaleFactor: 1.1,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                            child: SizedBox(
                              width:size.width * 0.8,
                              child: const Button(),
                            ))
                      ],
                    ),
                  )
                ])),
          ),
        ),
      );
  }
}
