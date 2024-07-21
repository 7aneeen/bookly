import 'package:booklyapp/core/utils/asset.dart';
import 'package:booklyapp/features/home/data/models/booksmodel.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Bookswidget extends StatelessWidget {
  const Bookswidget({super.key, required this.bModel});
  final Booksmodel bModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(bModel.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${bModel.bookName}",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "${bModel.authorName}",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text("${bModel.price}",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(
                        width: 50,
                      ),
                      Text("${bModel.rate}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
