import 'package:flutter/material.dart';

class AdWidget extends StatelessWidget {
  //내가 변수로 받고 싶은 것들 선언해주기
  final String title;
  final String subTitle;
  final String imageUrl;
  final Color color;

  // 생성자
  const AdWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      // color: Colors.green, //BoxDecoration쓸때는 Container의 color제거
      margin: const EdgeInsets.all(20.0),
      // padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            // color: Colors.red, -> BoxDecoration을 사용할때는 container의 color옶견 사용 불가능
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(color: Colors.white, fontSize: 30)),
                  Hero(
                    tag: subTitle,
                    child: Text(subTitle),
                  ),
                ],
              ),
            ),
          ),
          //이미지
          Padding(
            //padding은 속성이 아니라 확장으로 지원한다
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: imageUrl,
              child: Image.network(
                imageUrl,
                width: 100,
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
