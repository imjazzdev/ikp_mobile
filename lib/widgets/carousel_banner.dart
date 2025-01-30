import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CarouselBanner extends StatefulWidget {
  const CarouselBanner({super.key});

  @override
  State<CarouselBanner> createState() => _CarouselBannerState();
}

class _CarouselBannerState extends State<CarouselBanner> {
  final items = [
    ItemSlide(pathImg: 'slide 1.jpg'),
    ItemSlide(pathImg: 'slide 2.jpg'),
    ItemSlide(pathImg: 'slide 3.jpg'),
    ItemSlide(pathImg: 'slide 4.jpg'),
    ItemSlide(pathImg: 'slide 5.jpg'),
    ItemSlide(pathImg: 'slide 6.jpg'),
    ItemSlide(pathImg: 'slide 7.jpg'),
    ItemSlide(pathImg: 'slide 8.jpg'),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            disableCenter: false,
            pauseAutoPlayInFiniteScroll: true,
            // enlargeCenterPage: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: items,
        ),
        Flexible(
          child: DotsIndicator(
            dotsCount: items.length,
            position: currentIndex,
            decorator: DotsDecorator(
              activeSize: Size.square(11),
              activeColor: Colors.orange,
              color: Colors.green.shade100,
            ),
          ),
        )
      ],
    ));
  }
}

class ItemSlide extends StatelessWidget {
  final String pathImg;
  const ItemSlide({super.key, required this.pathImg});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/${pathImg}',
      fit: BoxFit.cover,
    );
  }
}
