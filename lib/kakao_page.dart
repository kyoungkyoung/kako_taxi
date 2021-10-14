import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hello_flutter/ads/ad_widget.dart';
import 'package:hello_flutter/ads/taxi_icon.dart';
import 'package:hello_flutter/home_page.dart';
import 'package:hello_flutter/home_page2.dart';
import 'package:hello_flutter/model/ad.dart';
import 'package:hello_flutter/ui/ad_detail_page.dart';

class KakaoPage extends StatelessWidget {
  KakaoPage({Key key}) : super(key: key);

  // 운송수단
  final _menuItems = [
    '택시', // 변환 => TaxiIcon(title: '택시')
    '버스',
    '자전거',
    '대리',
    '택시2',
    '택시3',
  ];

  // 광고
  final _addItems = [
    Ad(
      title: '안녕하세요',
      subTitle: 'Hello',
      imageUrl:
          'https://mblogthumb-phinf.pstatic.net/20151007_82/mahaya__1444198099543DuNuN_JPEG/frodo_o%27_chorong.jpg?type=w2',
      color: Colors.yellow,
    ),
    Ad(
      title: '안녕하세요',
      subTitle: 'Hello',
      imageUrl:
          'https://mblogthumb-phinf.pstatic.net/20151007_82/mahaya__1444198099543DuNuN_JPEG/frodo_o%27_chorong.jpg?type=w2',
      color: Colors.green,
    )
    // {
    //   'title': '안녕하세요',
    //   'subTitle': 'Hello',
    //   'imageUrl':
    //       'https://mblogthumb-phinf.pstatic.net/20151007_82/mahaya__1444198099543DuNuN_JPEG/frodo_o%27_chorong.jpg?type=w2',
    //   'color': Colors.yellow,
    // },
    // {
    //   'title': '안녕하세요',
    //   'subTitle': 'Hello',
    //   'imageUrl':
    //       'https://mblogthumb-phinf.pstatic.net/20151007_82/mahaya__1444198099543DuNuN_JPEG/frodo_o%27_chorong.jpg?type=w2',
    //   'color': Colors.green,
    // }
  ];

  // 공지사항
  final _notices = [
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
  ];

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 0);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kakao T',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            children: _menuItems.map((e) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage2()),
                  );
                },
                child: TaxiIcon(title: e),
              );
            }).toList(),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          ),
          //광고자리
          AspectRatio(
            aspectRatio: 2 / 1,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              pageSnapping: false,
              children: _addItems.map((Ad ad) {
                return InkWell(
                  onTap: () async {
                    Ad returnAd = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdDetailPage(ad: ad)),
                    );
                    print(returnAd.title);
                  },
                  child: AdWidget(
                    title: ad.title,
                    subTitle: ad.subTitle,
                    imageUrl: ad.imageUrl,
                    color: ad.color,
                  ),
                );
              }).toList(),
            ),
          ),
          // 공지
          ..._notices
              .map((e) => ListTile(
                  leading: Icon(Icons.alarm),
                  title: Text(e),
                  subtitle: Text('이것은 서브'),
                  trailing: Icon(Icons.arrow_forward_outlined),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()),
                    );
                  }
                  //tileColor: Colors.amber,
                  ))
              .toList(),
        ],
      ),
    );
  }
}
