import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  //메뉴 만들거에요
  Widget _buildTop(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                 Icons.local_airport,
                  size: 45,
              ),
                Text('비행기'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_airport,
                  size: 45,
                ),
                Text('비행기'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_airport,
                  size: 45,
                ),
                Text('비행기'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_airport,
                  size: 45,
                ),
                Text('비행기'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                print('클릭');
              },
              child: Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시'),
                ],
              ),
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Opacity(
              opacity: 0.0,
              child: Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

//7개를 만들어야 되는데 1개 빼야되는데 이걸 숨기자 Opacity -> opacity: 0.0 활용

  Widget _buildMiddle(){
    final imageItems = [
      'assets/images.jpg',
      'assets/optimize.jpg',
      'assets/다운로드.jpg',//스폰지밥 사진 사라짐 ?
    ];
    return CarouselSlider(
      options: CarouselOptions(
        height: 500.0,
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

  Widget _buildBottom(){
    final items = List.generate(
        10, (i){
          return ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text('아래로 내려 보세요.'),
          );
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
