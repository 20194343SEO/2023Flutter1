import 'package:flutter/material.dart';

class HeroTest extends StatefulWidget {
  const HeroTest({super.key});

  @override
  State<HeroTest> createState() => _HeroTestState();
}

class _HeroTestState extends State<HeroTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Test'),
        backgroundColor: Colors.cyan,
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context){
                    return HeroDetailPage();
                  }
              ),
          );
        },
        child: Hero(
          tag: 'Image',
          child: Image.asset(
            'assets/짱구.jpg',
            width: 100,
            height: 100,
            //이미지 가져오는거 pubspec.yaml가서 코드 작성 책 페이지 155
            //터미널 가서 flutter pub get 입력 그럼 이미지 가져와짐
          ),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail'),
        backgroundColor: Colors.yellow,
        //위에 있는 코드로 사진을 만들어 다시 사진을 클릭하면 여기 있는 코드 성질 사용
      ),
      body: Hero(
        tag: 'image',
        child: Image.asset('assets/짱구.jpg'),

      ),
    );
  }
}
