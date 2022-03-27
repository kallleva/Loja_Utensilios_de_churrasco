import 'package:flutter/material.dart';

class Baners extends StatelessWidget {
  const Baners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        'https://images.tcdn.com.br/img/img_prod/789999/1647719725_capas_site2.jpg',
      ),
    );
  }
}
