import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'test1.dart';
import 'test2.dart';
import 'test3.dart';
import 'test6.dart';

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
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => test1(),
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.looks_one,
                    color: Colors.green,
                    size: 45,
                  ),
                  Text(
                      '과목',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => test2(),
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.looks_two,
                    color: Colors.green,
                    size: 45,
                  ),
                  Text(
                      '과목',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => test3(),
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.looks_3,
                    color: Colors.green,
                    size: 45,
                  ),
                  Text(
                      '과목',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
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
                    Icons.looks_4,
                    size: 45,
                    color: Colors.green,
                  ),
                  Text(
                      '과목',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Icon(
                  Icons.looks_5,
                  size: 45,
                  color: Colors.green,
                ),
                Text(
                    '과목',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            // Opacity(
              // opacity: 0.0,
              // child:
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => test6(),
                  ),
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.looks_6,
                    color: Colors.green,
                    size: 45,
                  ),
                  Text(
                    '과목',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
            // ),
          ],
        ),
      ],
    );
  }

//7개를 만들어야 되는데 1개 빼야되는데 이걸 숨기자 Opacity -> opacity: 0.0 활용

  Widget _buildMiddle(){
    final imageItems = [
      //'assets/a.jpg',
      //'assets/b.jpg',
      //'assets/c.jpg',
      'assets/f.png'
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
        1, (i){
      return Column(
        children: [
          ListTile(
            leading: Icon(Icons.filter_1),
            title: Text('모바일 프로그래밍.'),
          ),
          ListTile(
            leading: Icon(Icons.filter_2),
            title: Text('디지털 영상처리.'),
          ),
          ListTile(
            leading: Icon(Icons.filter_3),
            title: Text('심층강화학습.'),
          ),
          ListTile(
            leading: Icon(Icons.filter_4),
            title: Text('네트워크 프로그래밍.'),
          ),
          ListTile(
            leading: Icon(Icons.filter_5),
            title: Text('지능형 사물 인터넷.'),
          ),
          ListTile(
            leading: Icon(Icons.filter_6),
            title: Text('OCU 생활일본어.'),
          ),
        ],
      );
      
    });
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
