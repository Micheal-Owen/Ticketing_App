import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/styles.dart';

class MovieView extends StatelessWidget {
  final Map<String, dynamic> acacia;
  const MovieView({Key? key, required this.acacia}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(right:17, top:5),
        width: 0.6*size.width,
        height: AppLayout.getHeight(350),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ],
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(180),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:AssetImage('assets/${acacia['poster']}')
                )
              ),
            ),
            SizedBox(height:AppLayout.getHeight(15)),
            Text("${acacia['title']}", style: Styles.headLineStyle2.copyWith(color:Styles.kakiColor)),
            Row(
              children: [
                Text("${acacia['rating']}/10"),
                const Icon(Icons.star),
                 Text("rating", style:Styles.headLineStyle1)
              ],
            )

          ],
        ),
      )
    );
    }
}
