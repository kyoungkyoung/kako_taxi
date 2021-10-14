import 'package:flutter/material.dart';

// statelessWidget ; 상태가 없는 위젯(기본) > stless치면 자동완성 -> 화면 전환이 필요하면 그때 바꿔도 된다
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('위젯 연습'),
      ),
      body: Row(
        children: [
          Text('위젯 연습'),
          SizedBox(
            width: 30,
          ),
          Text('위젯 연습'),
          SizedBox(
            width: 30,
          ),
          Text('위젯 연습'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('뒤로가기'),
          )
        ],
      ),
    );
  }
}
