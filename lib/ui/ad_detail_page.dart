import 'package:flutter/material.dart';
import 'package:hello_flutter/model/ad.dart';

class AdDetailPage extends StatelessWidget {
  final Ad ad;

  const AdDetailPage({Key key, @required this.ad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ad.title),
      ),
      body: Column(
        children: [
          Hero(
            tag: ad.subTitle,
            child: Text(ad.subTitle),
          ),
          Hero(
            tag: ad.imageUrl,
            child: Image.network(
              ad.imageUrl,
              width: 100,
              height: 100,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, ad);
            },
            child: Text('값 넘기기'),
          )
        ],
      ),
    );
  }
}
