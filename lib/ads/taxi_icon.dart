import 'package:flutter/material.dart';

class TaxiIcon extends StatelessWidget {
  final String title;

  //생성자
  const TaxiIcon({
    Key key,
    @required this.title,
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
