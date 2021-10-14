import 'package:flutter/material.dart';
import 'package:hello_flutter/tab_page.dart';
//control+alt+O

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //위젯을 사용할 수 있게 해준다 ; material design을 사용할 수 있게 해줌
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: KakaoPage(), //HomePage가 변화가 없다면 const를 붙여준다 ; alt+enter
      home: const TabPage(),
    );
  }
}
