import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildMiddle(),
      ],
    );
  }

  Widget _buildMiddle(){
    final imageItems = [
      'assets/a.jpg'
    ];
    return CarouselSlider(
      options: CarouselOptions(
        height: 450.0,
      ),
      items: imageItems.map((path)
      {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRect(
                child: Image.asset(
                  path,
                  fit: BoxFit.cover, //사진 크기 맞추는 법
                ),
              ),
            );
          },
        );
      }
      ).toList(),
    );
  }
}
