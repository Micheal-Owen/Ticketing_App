import 'package:flutter/material.dart';
import 'package:cinemax/utils/app_layout.dart';
import 'package:cinemax/utils/styles.dart';

class ComingDetails extends StatelessWidget {
  final String title;
  final String description;
  final String poster;
  const ComingDetails({Key? key, required this.title, required this.poster, required this.description}) : super(key: key);

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
          icon: const Icon(Icons.arrow_back_ios), onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              width: size.width*0.95,
              height: 700,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical:15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24)
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight:450, maxWidth: 400),
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
                                  Flexible(
                                    child: Text(title,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            decoration: TextDecoration.none),
                                        textScaleFactor: 1.5,
                                    overflow: TextOverflow.clip,),
                                  ),
                            ],
                          ),
                          const SizedBox(height:15),
                          Text(description,style: const TextStyle(color: Colors.black, decoration: TextDecoration.none), textScaleFactor: 1,),
                          const SizedBox(height: 15),
                          Center(child: SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFFF44336))),
                              child: const Text("COMING SOON"),),
                          ))
                        ],
                      ),
                    )
                  ]
              )
          ),
        ),
      ),
    );

  }
}
