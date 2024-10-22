

import 'package:flutter/material.dart';

class ProdactView extends StatelessWidget {
  final String img;
  final String titel;
  final String des;
  final String price;
  const ProdactView(
      {super.key,
      required this.des,
      required this.img,
      required this.price,
      required this.titel});

  @override
  Widget build(BuildContext context) {
    return Card(
      
    
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            
            Expanded(
              child:
                  Image.asset(img, fit: BoxFit.contain, width: double.maxFinite),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                titel,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                des,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                price,
                style: const TextStyle(
                  color: Colors.orangeAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
