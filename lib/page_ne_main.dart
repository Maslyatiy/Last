import 'package:flutter/material.dart';
import 'package:ozon_ept/Cards.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PageNeMain extends StatelessWidget {
  final Cards cards;

  const PageNeMain({super.key, required this.cards});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OzonTerpit"),
      ),
      body: Container(
        color: Colors.white38,
        child: Column(


          children: [
            Container(
              color: Colors.grey,
              child: CarouselSlider.builder(
                itemCount: cards.images.carouselImages.length,
                itemBuilder: (BuildContext context, int index, int pageViewIndex) {
                  return Image.network(cards.images.carouselImages[index]);

                },
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.2,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                
                cards.name,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Text(

                cards.description,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
