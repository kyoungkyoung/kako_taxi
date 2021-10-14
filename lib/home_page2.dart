import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  //String, int, double, bool, num
  String text = '중간';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage2'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(text),
            ElevatedButton(
              onPressed: () {
                print('click!!'); //run탭에서 확인
                //상태가 변경되었을때 화면을 다시 그려줌
                setState(() {
                  //얘는 stateful에서만 가능하다
                  text = '짜잔!!!';
                });
              },
              child: Text('버튼'),
            )
          ],
        ), //쉼표를 넣어도 되고 않넣어도 된다
      ),
    );
  }
}
