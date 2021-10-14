import 'package:flutter/material.dart';

class TaxiIcon extends StatelessWidget {
  final String title;

  //생성자
  const TaxiIcon({
    Key key,
    @required this.title, //이렇게 해야 안전 -> 예전 버전은 @
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage('img/Taxi.png'),
          width: 70,
        ),
        Text(title),
      ],
    );
  }
}
