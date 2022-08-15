// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HealthFacts extends StatefulWidget {
  const HealthFacts({Key? key}) : super(key: key);

  @override
  State<HealthFacts> createState() => _HealthFactsState();
}

class _HealthFactsState extends State<HealthFacts> {
  final urlImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbRi3dJ2E-YTwY4axfJIEJXT9S50CKdN0uFg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlsa_M2L0dBFBm692lB5ST3iDwn2Ljw_9jZA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvMDdYcVSXifql6WQe-ZBHC-eviMg11hmSxQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTc0oIY6HJj5L2GSVq6x8cxylzphUl9eyXRw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnXAZYsy01df04wMBJJqfSnzfbAo_lOMFUpg&usqp=CAU',
    'https://i.pinimg.com/originals/3c/eb/0b/3ceb0bece358b475c1dcc11ffb0b57e6.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDNL0P2DZ2vvmFLcSczAf04pOW_Mh-zJh-hA&usqp=CAU',
    'https://www.thegoodbody.com/wp-content/uploads/2022/06/laughing-can-increase-blood-flow-by-20-percent.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
        options: CarouselOptions(height: 300),
        itemCount: 8,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];
          return buildImage(urlImage, index);
        },
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        height: 200,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
            
          ),
          color: Colors.blueGrey,
        ),
        
        child: Image.network(
          urlImage,
          fit: BoxFit.fill,
        ),
      );
}
